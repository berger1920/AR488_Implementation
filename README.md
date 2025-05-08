# AR488_Implementation

This is my implementation of the **AR488 Arduino GPIB Interface** project by Twilight-Logic:

[AR488 by Twilight-Logic](https://github.com/Twilight-Logic/AR488)

My immediate need was to be able to take screenshots of my **Tektronix 2232 oscilloscope**: [Tek2232](https://w140.com/tekwiki/wiki/2232)

It has Option 10 installed (GPIB port but no RS-232).

Since I had several unused Arduino Leonardo boards, I decided to design a PCB shield for UNO/Leonardo, and use a simple and cheap IEE488 cable since the distance between the interface and my oscilloscope is small. So I had no need to use an expensive IEE488 cable.

Cable used: https://aliexpress.com/item/1005002004248810.html

![GPIB_Cable](https://github.com/user-attachments/assets/b31f2838-6f7d-4201-b3a4-cf614e7f5372)

WIP...
