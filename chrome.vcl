include Unimacro.vch;
# Voice commands for chrome, depends on Vimium Extension
#
 
go to <_anything>	= {ctrl+l} $1 {Enter};
(address [bar] | adresbalk) = {ctrl+l};
(copy address | clip URL )	= "yy";
paste address			= {ctrl+l}{ctrl+v}{enter};
Google search = {ctrl+t}"google.nl"{Enter};
new tab = {ctrl+t};
(close current tab |tabblad sluiten) = "x";
previous tab = "K";
next tab = "J";
(reload page |page reload) ="r";
view source = "gs";
find mode = "/";
open link = "gg";
go back = "H";
go forward = "L";
open URL ="O";
help = "?";
identificeren = "gewoon chrome";

# GMail - Dutch Commands:
# Vimium is disabled for gmail.com
#
Mail van:
    identificeren = ''Mail app '';
    (opstellen | nieuwe e-mail | nieuw bericht )	= "c";
    map verzonden berichten 		= "gt";
    (inbox | map inbox|inbox map)	= "gi";
    map alle berichten 			= "ga";
    (open e-mail | open bericht )	= "o";
    [bericht] archiveren 			= "{";
    [bericht] doorsturen			= "f";
    allen beantwoorden                    = "a";
    [bericht] beantwoorden		= "r";
    (vorig bericht | vorige e-mail)				= "j";
    (volgend bericht	| volgende e-mail)			= "k";
    (bericht verwijderen| delete e-mail | verwijder bericht | e-mail verwijderen)	= "#";
    (verzend e-mail | e-mail verzenden | bericht verzenden )	= {Ctrl+Enter};


