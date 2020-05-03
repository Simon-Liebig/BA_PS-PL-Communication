Setting up the PetaLinux projekt.

0. unzip the projekt 

CDMA

1. $ petalinux-build 		# this takes a lot of time; if some Errors appear just run it again! 
2. $ petalinux-package --boot --force --fsbl ./images/linux/zynq_fsbl.elf --fpga ./images/linux/design_1_wrapper.bit --u-boot
3. Copy to SD

AXI-DMA

1. $ petalinux-build		# this takes a lot of time
2. $ petalinux-package --boot --force --fsbl ./images/linux/zynq_fsbl.elf --fpga ./images/linux/microzed_axi_dma_wrapper.bit --u-boot
3. Copy to SD

To archive a Projekt again
$ petalinux-build -x mrproper


Files-for-SD-Image:
	with small changes to the SD-Card-Config-Skript.sh Skript the SD-Card-IMAGE can be createt out of these Files.

Files-for-Home
	Dateien, die man bei einem frisch erstellten System des AXI-DMA-Projekts noch noch in das /root/home/ Verzeichnis übertragen kann.
	Test txt-Datein für die axidma_transfer Application
	Bitstream für die Memcopy_LaurisBlog Application
