U0 VMCompile()
{
  CATARep *head=NULL,*ata_drv=NULL,*atapi_drv=NULL;
  CTask *task;
  "\nIt's normal for this to freeze for a moment or two.\n";
  PressAKey;

  task=User;
  TaskWait(task);
  task->border_src=BDS_CONST;
  task->border_attr=LTGRAY<<4+DrvTextAttrGet(':')&15;
  task->text_attr  =LTGRAY<<4+BLUE;
  task->win_inhibit=WIG_TASK_DFT-WIF_SELF_BORDER;
  WinHorz(Fs->win_left,Fs->win_right,task);
  WinVert(Fs->win_top,(Fs->win_top+Fs->win_bottom)>>2-1,task);
  WinVert(task->win_bottom+3,Fs->win_bottom);
  WinToTop(Fs);

  ATARep(FALSE,TRUE,&head);
  ATAIDDrvs(head,&ata_drv,&atapi_drv);

  XTalkWait(task,"BootHDIns;\n\nC\ns0x01f0\n0x03f4\n0Ts0x0170\n0\n\n\n");

  LinkedLstDel(head);
  WinVert(task->win_top,Fs->win_bottom);
  Kill(task);
}


//Setup Script

"\n\nAre you sure you want to install Gkey? ";
if(YorN){
  Copy("Keyboard.HC.Z","C:/Kernel/SerialDev/Keyboard.HC.Z");
  Copy("HomeKeyPlugIns.HC.Z","C:/Home");
  Cd("C:");
  
  "\n\nTo use Gkey, you will need to recompile the Kernel.\nAre you using a Virtual Machine (VirtualBox, VMWare, QEMU, etc.)? ";
  
  if(YorN){
    "Recompiling Kernel...\n\n";
    VMCompile;
  }else{
    "You will need to recompile manually!\n\n";
    PressAKey;
    BootHDIns;
  }
  "Reboot Now?\n";
  if(YorN)
    Reboot;
}
else{
  "\nInstallation aborted!\n\n";
}