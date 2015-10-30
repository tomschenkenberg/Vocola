include Unimacro.vch;
# Voice commands for slack
#

team directory = {Ctrl+Shift+e};
(go previous | go up )= {Alt+Up};
(go next | go down ) = {Alt+Down};
(open voorkeuren|open preferences) = {Ctrl+","};
(close | sluiten) = {Esc};
(algemeen kanaal|switch to general )= {Ctrl+k} Wait(100) general{Enter};
(zoeken|search) = {Ctrl+f};
direct message <_anything> = {Ctrl+k} Wait(250) $1;
Spring naar <_anything> = {Ctrl+k} Wait(250) $1;

(zet afwezig|zet actief|set active|set away ) = "/away" Wait(100) {Enter}{Enter};

