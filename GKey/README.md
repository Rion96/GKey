# GKey

![Differences](https://raw.githubusercontent.com/Rion96/GKey/master/TOSKeyDevDone.png)

GKey is a German keyboard layout for Temple OS.
Due to limitations, GKey has no dead keys and will need to change parts of the default font for special characters (ß,§,€).
This font change will also apply to the umlaut characters already implemented by Terry to make them fit in more with the rest of the characters.

![New Font](https://raw.githubusercontent.com/Rion96/GKey/master/NewFont.png)

As TempleOS doesn't have support for AltGr combos, the Alt keys will serve as both Alt and AltGr keys.
Alt+M is already used by TempleOS to maximize windows, so AltGr+M (µ) is not implemented.

To accomplish all this, GKey will replace your HomeKeyPlugIns.HC.Z, so if you made changes to that, I recommend you back it up.
All changes to the font and the scan decode table are made to the memory during boot and will not alter anything else.

# Installation

Here is a set of commands that should allow you to install GKey:

    Cd("T:");
    #include "Setup.HC.Z";
    
This script will copy the HomeKeyPlugIns.HC.Z to your Home directory for you.
You are free to copy the file manually as well.

To uninstall, just delete HomeKeyPlugIns.HC.Z from your Home directory
