# GKey
Pseudo-German Keyboard Layout for TempleOS:
![Differences](https://raw.githubusercontent.com/Rion96/GKey/master/TOSKeyDev2.png)

# Installation
- Mount the .ISO.C File
- Copy Keyboard.HC.Z to your "/Kernel/SerialDev" directory

This command should usually get the job done:

    Copy("T:/Keyboard.HC.Z","C:/Kernel/SerialDev");
    
- Run: BootHDIns;

Quick Runthrough on how to do BootHDIns on a standard VM:
Press ENTER, then C, then press p to probe, enter Base0, then enter Base1.

Now press T, then p to probe again, enter Base0, then press Enter until done.
