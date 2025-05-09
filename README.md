# AR488_Implementation

This is my implementation of the **AR488 Arduino GPIB Interface** project by Twilight-Logic:

[AR488 by Twilight-Logic](https://github.com/Twilight-Logic/AR488)

My immediate need was to be able to take screenshots of my **Tektronix 2232 oscilloscope**: [Tek2232](https://w140.com/tekwiki/wiki/2232)

It has Option10 installed on it (GPIB port but no RS-232).

Since I had several unused Arduino Leonardo boards, I decided to design a PCB shield for UNO/Leonardo, and use a simple and cheap IEE488 cable since the distance between the interface and my oscilloscope is small. So I had no need to use an expensive IEE488 cable.

Cable used: https://aliexpress.com/item/1005002004248810.html

![GPIB_Cable](https://github.com/user-attachments/assets/b31f2838-6f7d-4201-b3a4-cf614e7f5372)


PCB Shield for Arduino and Leonardo designed with KiCad 9.0. Files available in Gerber folder.

![PCB-Top_Simul-3D](https://github.com/user-attachments/assets/91017702-963c-4e1c-ab60-492dda2d3024)

![PCB-Bot_Simul-3D](https://github.com/user-attachments/assets/4d458fdc-738e-4b1a-8971-a6c44fd96fb4)

This is the PCB manufactured at JLCPCB:

![PCB](https://github.com/user-attachments/assets/8abd05d0-57f8-49c4-a019-a2b4e7491b61)

I have designed a simple case with OpenSCAD. The opening between the DC connector and the micro-USB is to allow the LEDs of the Leonardo board to be seen. In case of using Arduino UNO, that opening is unnecessary. My case desing is poor, so in the 3D-print folder you can find not only the .3mf files for direct printing, but also the .scad file for modification and improvement.

![3D_Printing](https://github.com/user-attachments/assets/aea9aa76-2eaf-48fe-9f36-4c03383d8e13)

Assembling the interface:

![PCB_assembled_01](https://github.com/user-attachments/assets/f4a0dbee-ad48-44d1-a3c4-f6c1f4c82341)

![PCB_assembled_02](https://github.com/user-attachments/assets/4d5e954e-2e02-4f3c-ab66-b1bacf5b7a90)

![PCB_assembled_03](https://github.com/user-attachments/assets/793425fd-1c56-4b5d-b4cc-22087cdfaeee)

Connecting the AR488 intereface to the Tektronix Oscilloscope and the Laptop:

![Installation_01](https://github.com/user-attachments/assets/3c9bfa0f-64f2-49d6-8e5c-96473dfded04)

![Installation_02](https://github.com/user-attachments/assets/2442ac53-198d-4149-bebc-e7c880e682f0)

![Installation_03](https://github.com/user-attachments/assets/c2ae6492-74fb-4db0-a9bc-a39f0ecad5fd)

![Installation_04](https://github.com/user-attachments/assets/e92f6324-1474-4cfb-9eb0-0aa4d6a0a597)

And a simple printing test:

![IRQ](https://github.com/user-attachments/assets/be063bea-b5c6-43ad-b671-c71343568301)

At the moment I only use the interface to take screenshots, using the plotter print option that this oscilloscope has. The oscilloscope sends data in HPGL format, which I capture on a Serial Terminal, and then convert into a vector file (svg) or I can also export as a jpg, png, etc.

As I work only on GNU/Linux, the program I use for the conversion of HPGL into other formats is:

https://www.gnu.org/software/hp2xx/

If you want to ask questions or give feedback, please click here:

https://github.com/Twilight-Logic/AR488/discussions/57

