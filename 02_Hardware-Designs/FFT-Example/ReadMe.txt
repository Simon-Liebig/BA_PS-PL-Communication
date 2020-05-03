Accelerator Example (Abschnitt 4.2.4 - AXI-DMA Accelerator Example)

Im dma_ex_fft_v2_0 Ordner befinden sich das Beispiel von https://www.xilinx.com/support/answers/58582.html 

Im FFT-Example Ordner ist das Beispiel für das MicroZed-Board angepasst.

Um die Anwendung auszuprobieren solte das Vivado-Projekt gestartet werden und daraus dann die SDK.
Über Xilinx->Programm FPGA ausführen
Ein Uart-Terminal öffnen und mit Baudrate 115200 einstellen
In der SDK Run As mit Xilinx GDB
Application auswählen
STDIO Connection auf das vorher geöffnete Uart-Terminal einstellen.
Run

Im dma_ex_fft_v2_0 ist ein Matlab Skript zu finden, mit dem andere Stimulus Daten erzeugt werden können.

Insgesammt ein sehr gelungenes und gut dokumentiertes Beispeil!
