

include Unimacro.vch;
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
(nieuw tabblad|new tab) = {ctrl+t};
(close current tab |tabblad sluiten) = "x";
(vorig tabblad|previous tab) = {Ctrl+Shift+Tab};
(volgend tabblad| next tab) = {Ctrl+Tab};
(pagina herladen|herlaad pagina|reload page |page reload) ="r";
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


view source = "gs";
find mode = "/";
open link = "gg";
go back = "H";
go forward = "L";
open URL ="O";
help = "?";

# GMail - Dutch Commands:
# Vimium is disabled for gmail.com
#
Mail van:
    (opstellen | nieuwe e-mail | nieuw bericht | new message)		= "c";
    map verzonden berichten 								= "gt";
    (inbox | map inbox | inbox map)							= "gi";
    (map alle berichten | all messages) 						= "ga";
    (open e-mail | open bericht )								= "o";
    ([bericht] archiveren | archive) 							= "{";
    ([bericht] doorsturen | forward)							= "gf";
    (allen beantwoorden  | reply all )                  					= "a";
    ([bericht] beantwoorden | e-mail beantwoorden | reply)			= "r";
    (vorig bericht | vorige e-mail |previous)						= "j";
    (volgend bericht	| volgende e-mail | next)					= "k";
    (bericht verwijderen| delete e-mail | verwijder bericht | e-mail verwijderen | delete email)	= "#";
    (verzend e-mail | e-mail verzenden | bericht verzenden | sent message)					= {Ctrl+Enter};


