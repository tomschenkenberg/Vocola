# vocola file for alternate language: nld
include ..\Unimacro.vch;
# Voice commands for explorer

# quick directories

<shortcut_directory> := (
  Google drive  			= "C:\Users\tom\Google Drive"
| Dropbox 			= "C:\Users\tom\Dropbox"
| Onedrive                         = "C:\Users\tom\OneDrive"
| downloads                       = downloads
| vocola                             = C:\Users\tom\Dropbox\Documents\Vocola\nld
| offertes                           = "C:\Users\tom\Google Drive\Ibuildings\Sales Opportunities");

folder <shortcut_directory> =
{Alt+d}
Wait(200)
$1
{Enter}
Wait(100){Down}
Wait(100){Up};



