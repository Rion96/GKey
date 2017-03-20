# GKey

![Differences](https://raw.githubusercontent.com/Rion96/GKey/master/TOSKeyDev2.png)

As you can see, this isn't a full implementation of a German Keyboard.
I was mainly going for the most essential stuff. This is partially because some parts of the German keyboard are seriously hindering when you're coding (eg. The position of the Brackets), the fact that I do most things in English (So "öäüß" are useless) and the fact that I'm honestly just not experienced enough to get AltGr-Combos and the "<>|" Key to work since they aren't present on standard US keyboards and its scan code doesn't seem to be represented in the definition tables.

This file only changes the definition tables in Keyboard.HC.Z, so if you don't want to go through the hassle of downloading my ISO, or my modifications aren't to your liking, you are free to make these changes yourself as well. I've provided an uncompressed version my Keyboard.HC file as a reference.

# Installation
- Mount the .ISO.C File
- Copy Keyboard.HC.Z to your "/Kernel/SerialDev" directory
- Run BootDrvIns

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
