include Unimacro.vch;
# Voice commands for explorer

one drive folder = 
  AppBringUp("c:\windows\explorer.exe") 
  Wait(200)
  {Alt+d} 
  Wait(200)
  onedrive
  {Enter};


