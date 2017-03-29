//Setup Script for GKey

DocClear;
"\nAre you sure you want to install GKey for TempleOS? ";
if(YorN){
  Copy("HomeKeyPlugIns.HC.Z","~");
  "\n\nReboot Now? ";
  if(YorN)
    Reboot;
}
else{
  "\nSetup aborted!\n";
}