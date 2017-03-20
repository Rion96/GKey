# GKey

I'm now working on a full German Keyboard.
I will use the Alt keys as AltGr for this to work.
I've also found a way to register the "<>|" Key.

# Installation
- Mount the .ISO.C File
- Copy Keyboard.HC.Z to your "/Kernel/SerialDev" directory
- Run BootHDIns

These commands should usually get the job done:

    Cd("T:");
    Copy("Keyboard.HC.Z","C:/Kernel/SerialDev");
    Cd("C:");
    BootHDIns;

Quick Runthrough on how to do BootHDIns on a standard VM:

Harddrive:

Press ENTER, then C, then ENTER again, then press p to probe, enter Base0, then enter Base1, then 0.

CD/DVD Drive:

Now press T, then p to probe again, enter Base0, then 0, then press Enter until done.
