include Unimacro.vch;
# Voice commands for explorer

one drive folder = 
  {Alt+d} 
  Wait(200)
  onedrive
  {Enter};
  
# quick directories
<shortcut_directory> := (werkprojecten 	= e:\OneDrive\Work-Projects
			| Google drive  			= "C:\Users\Tom\Google Drive"
			| Dropbox 				= E:\Dropbox
			| Onedrive                         = E:\OneDrive
			| downloads                       = downloads);


folder <shortcut_directory> = 
  {Alt+d} 
  Wait(200)
  $1
  {Enter};


