#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <string.h>
#include <sys/time.h>           // Timing functions and definitions
#include "conversion.h"         // Miscellaneous conversion utilities
#include "sin_dat.h"			// Sinus Werte mit 2 Werten hintereinander

// The purpose this test is to show that users can get to devices in user
// mode .This is not to say this should replace a kernel driver, but does
// provide some short term solutions sometimes
// or a debug solution that can be helpful.

#define CDMA_BASE_ADDRESS   	  0x7E200000

#define DDR_BASE_ADDRESS_READ     0x20000000

#define DDR_BASE_ADDRESS_WRITE    0x20000800 	//800 entspricht 2048 Byte weiter

#define BRAM_BASE_ADRESS		  0x42000000	//fir_memo_top

/* CDMACR Register Offsets
 * Tabelle 2-7
 */
#define XAXICDMA_CR_OFFSET    	0x00000000  /**< Control register */
#define XAXICDMA_SR_OFFSET    	0x00000004  /**< Status register */
#define XAXICDMA_CDESC_OFFSET 	0x00000008  /**< Current descriptor pointer */
#define XAXICDMA_TDESC_OFFSET	0x00000010  /**< Tail descriptor pointer */
#define XAXICDMA_SRCADDR_OFFSET 0x00000018  /**< Source address register */
#define XAXICDMA_DSTADDR_OFFSET 0x00000020  /**< Destination address register */
#define XAXICDMA_BTT_OFFSET     0x00000028  /**< Bytes to transfer */

/* Bitmasks of XAXICDMA_CR_OFFSET register
 */
#define XAXICDMA_CR_RESET_MASK	0x00000004 /**< Reset DMA engine */
#define XAXICDMA_CR_SGMODE_MASK	0x00000008 /**< Scatter gather mode */

/* Bitmasks for interrupts for XAXICDMA_CR_OFFSET and XAXICDMA_SR_OFFSET
 */
#define XAXICDMA_XR_IRQ_IOC_MASK	0x00001000 /**< Completion interrupt */
#define XAXICDMA_XR_IRQ_DELAY_MASK	0x00002000 /**< Delay interrupt */
#define XAXICDMA_XR_IRQ_ERROR_MASK	0x00004000 /**< Error interrupt */
#define XAXICDMA_XR_IRQ_ALL_MASK	0x00007000 /**< All interrupts */
#define XAXICDMA_XR_IRQ_SIMPLE_ALL_MASK	0x00005000 /**< All interrupts for
                                                        simple only mode */
/* Bitmasks of XAXICDMA_SR_OFFSET register
 * This register reports status of a DMA channel
 * Tabelle 2-8
 */
#define XAXICDMA_SR_IDLE_MASK         0x00000002  /**< DMA channel idle */
#define XAXICDMA_SR_SGINCLD_MASK      0x00000008  /**< Hybrid build */
#define XAXICDMA_SR_ERR_INTERNAL_MASK 0x00000010  /**< Datamover internal err */
#define XAXICDMA_SR_ERR_SLAVE_MASK    0x00000020  /**< Datamover slave err */
#define XAXICDMA_SR_ERR_DECODE_MASK   0x00000040  /**< Datamover decode err */
#define XAXICDMA_SR_ERR_SG_INT_MASK   0x00000100  /**< SG internal err */
#define XAXICDMA_SR_ERR_SG_SLV_MASK   0x00000200  /**< SG slave err */
#define XAXICDMA_SR_ERR_SG_DEC_MASK   0x00000400  /**< SG decode err */
#define XAXICDMA_SR_ERR_ALL_MASK      0x00000770  /**< All errors */

//Größe für CDMA mmap
#define MAP_SIZE 4096UL
#define MAP_MASK (MAP_SIZE - 1)
//Größe für DDR mmap
#define DDR_MAP_SIZE 0x2000  //in bytes in Hex 2000 entspricht 8kB
#define DDR_MAP_MASK (DDR_MAP_SIZE - 1)
/*
 * Parameter für die Übertragung
 */
#define BUFFER_BYTESIZE		 2048	// Length of the buffers for DMA transfer in byte

#define max_adr 512 //Addressen des Speichers in der PL

//****************************************************************************************************************
/*
 * Array mit Dreieck vorbelegen
 */
void  ex_triang(int32_t *Array)
{
 int16_t increment, value;
 int32_t loword, hiword, outval;
 value = 0;
 increment = 64;
 for (int i = 0; i < max_adr/2; i++ )
 {
     value += increment;
     loword = value;
     value += increment;
     hiword = (value << 16) & 0xffff0000;
     outval = hiword | (loword & 0x0000ffff);
     Array[i] = outval;
 }
 for (int i = max_adr/2; i < max_adr; i++ )
 {
     value -= increment ;
     loword = value;
     value -= increment;
     hiword = (value << 16) & 0xffff0000;
     outval = hiword | (loword & 0x0000ffff);
     Array[i] = outval;
 }
 Array[510]= Array[510] & 0xfffffffe;//damit im mem mode bleibt
 printf("Dreiecksignal\n");
}

/*
 * Array mit Sinus vorbelegen
 */
void  ex_restore_sin(int32_t *Array)
{
    for (int i = 0; i < max_adr; i++ )
     {
         Array[i] = sin_dat[i];
     }
  	Array[510]= Array[510] & 0xfffffffe;//damit man im memory-mode bleibt
    printf("Sinus -> Speicher\n");
}

/*
 * Array leeren
 */
void  ex_clear(int32_t *Array)
{
    for (int i = 0; i < max_adr; i++ )
     {
         Array[i] = 0x00000000;
     }
     printf("Speicher wird geloescht\n");
}

/*
 * holt DDR in den userspace und kopiert Array hinein und unmaped DDR wieder
 */
void copytoDDR(int32_t *Array)
{
    //Source Speicher im DDR
    int memfd_1;
    void *mapped_dev_src;
    void *mapped_dev_base_1;
    off_t dev_base_1 = DDR_BASE_ADDRESS_READ;

    	//map DDR to userspace
    	memfd_1 = open("/dev/mem", O_RDWR | O_SYNC);
        if (memfd_1 == -1)
        {
        	printf("Can't open /dev/mem.\n");
            exit(0);
        }
        printf("/dev/mem opened. DDR\n");
        mapped_dev_src = mmap(0, DDR_MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, memfd_1, dev_base_1 & ~DDR_MAP_MASK);
        if (mapped_dev_base_1 == (void *) -1)
        {
        	printf("Can't map the memory to user space.\n");
            exit(0);
        }
        mapped_dev_base_1 = mapped_dev_src + (dev_base_1 & DDR_MAP_MASK);
        printf("Memory mapped DDR at address %p.\n", mapped_dev_base_1);
        //copy Array to DDR
    	memcpy(mapped_dev_base_1, Array, (BUFFER_BYTESIZE));
    	// Unmap DDR vrom userspace
        if (munmap(mapped_dev_base_1, DDR_MAP_SIZE) == -1)
        {
        	printf("Can't unmap memory from user space.\n");
        	exit(0);
        }
        close(memfd_1);
        printf("/dev/mem closed. DDR\n");
}

/*
 * öfffnet dev/mem und macht device im userspace verfügbar
 * gibt die dev_adresse zurück
 */
void* openDEV(int *memfd)
{
	void* device;
    off_t dev_base = CDMA_BASE_ADDRESS;

	*memfd = open("/dev/mem", O_RDWR | O_SYNC);
	if (*memfd == -1)
	{
		printf("Can't open /dev/mem.\n");
		exit(0);
	}
	printf("/dev/mem opened CDMA.\n");

	// Map one page of memory into user space such that the device is in that page, but it may not
	// be at the start of the page.
	 device = mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, *memfd, dev_base & ~MAP_MASK);
	if (device == (void *) -1)
	{
		printf("Can't map the memory to user space.\n");
		exit(0);
	}
	return device;
}

/*
 *  Un-map Device from User layer
 */
void closeDEV(int *memfd, void* device)
{
    if (munmap(device, MAP_SIZE) == -1)
    {
    	printf("Can't unmap memory from user space.\n");
    	exit(0);
    }
    if (close(*memfd) == 0)
    {
    	printf("/dev/mem closed Device.\n");
    }
    else
    {
    	printf("Error closing Device\n");
    }
}


/*
 * Init CDMA
 * Reset und Aktivierung der Interrupts
 */
void initCDMA(void * device)
{
 printf("CDMA init\n");
 unsigned int ResetMask;
 unsigned int RegValue;
 unsigned int TimeOut =5;
 //Reset CDMA
 do{
		ResetMask = (unsigned long)XAXICDMA_CR_RESET_MASK;
		*((volatile unsigned long *) (device + XAXICDMA_CR_OFFSET)) = (unsigned long)ResetMask;
		/* If the reset bit is still high, then reset is not done */
		ResetMask = *((volatile unsigned long *) (device + XAXICDMA_CR_OFFSET));
		if(!(ResetMask & XAXICDMA_CR_RESET_MASK))
		{
			break;
		}
		TimeOut -= 1;
  }while (TimeOut);
  //enable Interrupt
  RegValue = *((volatile unsigned long *) (device + XAXICDMA_CR_OFFSET));
  RegValue = (unsigned long)(RegValue | XAXICDMA_XR_IRQ_ALL_MASK );
  *((volatile unsigned long *) (device + XAXICDMA_CR_OFFSET)) = (unsigned long)RegValue;

  // Check the DMA Mode and switch it to simple mode
  RegValue = *((volatile unsigned long *) (device + XAXICDMA_CR_OFFSET));
  if((RegValue & XAXICDMA_CR_SGMODE_MASK))
  {
	  RegValue = (unsigned long)(RegValue & (~XAXICDMA_CR_SGMODE_MASK));
	  printf("Reading \n \r");
	  *((volatile unsigned long *) (device + XAXICDMA_CR_OFFSET)) = (unsigned long)RegValue ;
  }
}

/*
 * Datentransfer Übergabe von source- und destination- Adresse
 */
void datatransfer(void * device, unsigned long source, unsigned long destination)
{
 printf("transfer\n");
 unsigned int RegValue;

	  // Checking for the Bus Idle
	  RegValue = *((volatile unsigned long *) (device + XAXICDMA_SR_OFFSET));
	  if(!(RegValue & XAXICDMA_SR_IDLE_MASK))
	  {
		  printf("BUS IS BUSY Error Condition \n\r");
		  exit(1);
	  }

	//Set the Source Address
	*((volatile unsigned long *) (device + XAXICDMA_SRCADDR_OFFSET)) = source;
	//Set the Destination Address
	*((volatile unsigned long *) (device + XAXICDMA_DSTADDR_OFFSET)) = destination;
	RegValue = (unsigned long)(BUFFER_BYTESIZE);//länge
	// write Byte to Transfer -> startet transfer
	*((volatile unsigned long *) (device + XAXICDMA_BTT_OFFSET)) = (unsigned long)RegValue;

	//Heißes Warten auf einen Interrupt über den transfer Status
	do
	{
	  RegValue = *((volatile unsigned long *) (device + XAXICDMA_SR_OFFSET));
	}while(!(RegValue & XAXICDMA_XR_IRQ_ALL_MASK));
	//Interrupt auswerten
	if((RegValue & XAXICDMA_XR_IRQ_IOC_MASK))
	{
	  printf("Transfer Completed \n\r ");

	}
	if((RegValue & XAXICDMA_XR_IRQ_DELAY_MASK))
	{
		printf("IRQ Delay Interrupt\n\r ");
	}
	if((RegValue & XAXICDMA_XR_IRQ_ERROR_MASK))
	{
		printf(" Transfer Error Interrupt\n\r ");
	}
	//Clear Interrupt Flag
	RegValue = *((volatile unsigned long *) (device + XAXICDMA_SR_OFFSET));
	RegValue = (unsigned long)(RegValue | XAXICDMA_XR_IRQ_ALL_MASK );
	*((volatile unsigned long *) (device + XAXICDMA_SR_OFFSET)) = (unsigned long)RegValue;
}

/*
 * Main
 */
int main()
{
 printf("sizeof(int)=%i\n",sizeof(int));
 printf("sizeof(int16_t)=%i\n",sizeof(int16_t));
 printf("sizeof(unsigned long)=%i\n",sizeof(unsigned long));
 printf("getpagesize()=%i\n",getpagesize());

    //CDMA
	int CDMA_fd =0;
    void *mapped_dev_base_CDMA = NULL;

    int32_t SrcArray[BUFFER_BYTESIZE/4 ];
	int key = 0; //für Tastatureingabe
	int leave =0; //für Tastatureingabe

 //make CDMA Accesable
 mapped_dev_base_CDMA = openDEV(&CDMA_fd);
 initCDMA(mapped_dev_base_CDMA);

 printf("Taste druecken !  \n");
 while(leave != 1)
  {
    if (key != 0xa)
    		{
	        printf("\n0 : Speichern \n1 : rekonstruieren \n2: Dreieck \n3: Leeren  \n4: Sinus ");
	        printf("\n6: Exit  \n");
	        printf("Taste druecken !  \n");
	        }
	scanf("%d", &key);
	switch (key)
	       {
	       case 0: //Store
		    datatransfer(mapped_dev_base_CDMA,BRAM_BASE_ADRESS,DDR_BASE_ADDRESS_WRITE);
	        break;
	       case 1: //Restore
		    datatransfer(mapped_dev_base_CDMA,DDR_BASE_ADDRESS_WRITE,BRAM_BASE_ADRESS);
	        break;
	       case 2: //Dreieck
	        ex_triang(SrcArray);
		    copytoDDR(SrcArray); //Daten im DDR ablegen
	        datatransfer(mapped_dev_base_CDMA,DDR_BASE_ADDRESS_READ,BRAM_BASE_ADRESS);
	        break;
	       case 3: //Löschen
	        ex_clear(SrcArray);
		    copytoDDR(SrcArray); //Daten im DDR ablegen
	        datatransfer(mapped_dev_base_CDMA,DDR_BASE_ADDRESS_READ,BRAM_BASE_ADRESS);
	        break;
	       case 4: //Sinus
	        ex_restore_sin(SrcArray);
		    copytoDDR(SrcArray); //Daten im DDR ablegen
	        datatransfer(mapped_dev_base_CDMA,DDR_BASE_ADDRESS_READ,BRAM_BASE_ADRESS);
	        break;
	       case 5: //not used
	        break;
	       case 6: //Schließen
	        printf("exit\n");
	        leave =1;//exit(0);
	        break;
	       case 0xa:
	        break;
	       default:
	        printf("key = %x \n",key);
	        break;
           }//end switch
  }//end while 1
 // Unmap the CDMA-Device
 closeDEV(&CDMA_fd, mapped_dev_base_CDMA);
 printf("ende\n");
 return 0;
}
