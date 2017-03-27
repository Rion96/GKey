//Setup Script

"\n\nAre you sure you want to install Gkey? ";
if(YorN){
  Copy("Keyboard.HC.Z","C:/Kernel/SerialDev/Keyboard.HC.Z");
  Copy("HomeKeyPlugIns.HC.Z","C:/Home");
  Copy("FontStd.HC.Z","C:/Kernel");
  "\n\nTo use Gkey, you will need to recompile the Kernel.\nAre you using a Virtual Machine (VirtualBox, VMWare, QEMU, etc.)? ";
  if(YorN){
    "Recompiling Kernel...\n\n";
    PressAKey;
    CTask *task;
    task = User;
    TaskWait(task);
    XTalkWait(task,"BootHDIns('C');\n\nC\ns0x01f0\n0x03f4\n0Ts0x0170\n0\n\n\nKill(Fs);\n");
  }else{
    "You will need to recompile manually!\n\n";
    PressAKey;
    BootHDIns('C');
  }
  "Reboot Now?\n";
  if(YorN)
    Reboot;
}
else{
  "\nInstallation aborted!\n\n";
}