# vocola file for alternate language: nld
#
# alleen Nederlands
# 

include ..\Unimacro.vch;

# Voice commands for chrome, depends on Vimium Extension
#

go to <_anything>	= {ctrl+l} $1 {Enter};
(address [bar] | adresbalk) = {ctrl+l};
(copy address | clip URL )	= "yy";
paste address			= {ctrl+l}{ctrl+v}{enter};
(Google zoeken|Google search) = {ctrl+t}"google.nl"{Enter};

#
# navigeren met tabbladen
#
(nieuw tabblad|new tab) = {ctrl+t} google.nl {Enter};
(sluit tabblad | tabblad sluiten) = {Ctrl+w};
(vorig tabblad|previous tab) = {Ctrl+Shift+Tab};
(volgend tabblad| next tab) = {Ctrl+Tab};
(pagina herladen|herlaad pagina|reload page |page reload) = {Ctrl+r};
tabblad [1..9] = {Ctrl+$1};

#
# navigeren in pagina's
#
(vorige pagina|previous page) = {Alt+Left};
(volgende pagina|next page) = {Alt+Right};

#
# 1Password commando's
# Zie:  https://guides.agilebits.com/1password-windows/4/en/topic/keyboard-shortcuts
#
1password = {Ctrl+\};
broncode = {Ctrl+u};
ga terug = {Backspace};


#find mode = "/";
#open link = "gg";
#go back = "H";
#go forward = "L";
#open URL ="O";
#help = "?";

#
# Google Inbox
#

Inbox:

(opstellen | nieuwe e-mail | nieuw bericht | new message)		= "c";
(open inbox | inbox | map inbox | inbox map)				= "i" Wait(100) "j";
(open gesnoozed)									= "i" Wait(100) {Shift+m} Wait(100) {Down} Wait(100) {Enter} {Right};
(open archief)									= "i" Wait(100) {Shift+m} Wait(100) {Down} {Down} Wait(100) {Enter} {Right};
(open bericht | bericht openen | open e-mail)							= "o";
(sluit bericht | bericht sluiten)			                                = "u";
([bericht] archiveren | archive) 							= "e";
([bericht] doorsturen | forward)							= "f";
(allen beantwoorden  | reply all )                  				= "a";
([bericht] beantwoorden | e-mail beantwoorden | reply)		        = "r";
(vorig bericht | vorige e-mail | previous)					= "k";
(volgend bericht	| volgende e-mail | next)					= "j";
(bericht verwijderen| delete e-mail | verwijder bericht | e-mail verwijderen | delete email)	= "#";
(verzend e-mail | e-mail verzenden | bericht verzenden | sent message)					= {Ctrl+Enter};

## toevoegen als taak = "gf" Wait(100) "me@wunderlist.com" Wait(200) {Tab} Wait(200) {Tab} Wait(100) {Down_12} {Shift+Ctrl+Home}{Del};


