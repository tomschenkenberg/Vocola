# vocola file for alternate language: nld
include ..\Unimacro.vch;
# Voice commands for explorer

# quick directories

<shortcut_directory> := (werkprojecten 	= "E:\GoogleDrive\Work-Projects"
| Google drive  			= "E:\GoogleDrive"
| Dropbox 				= E:\Dropbox
| Onedrive                         = E:\OneDrive
| downloads                       = downloads
| vocola                             = E:\Dropbox\Documents\Vocola\nld
| offertes                           = "E:\GoogleDrive\Ibuildings\IB-Opportunities-Tom en Joni");

folder <shortcut_directory> =
{Alt+d}
Wait(200)
$1
{Enter}
Wait(100){Tab}
Wait(100){Tab}
Wait(100){Tab};



