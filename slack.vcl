include Unimacro.vch;
# Voice commands for slack
#

team directory = {Ctrl+Shift+e};
(go previous | go up )= {Alt+Up};
(go next | go down ) = {Alt+Down};
open preferences = {Ctrl+","};
(close | sluiten) = {Esc};
switch to general = {Ctrl+k} Wait(100) general{Enter};
search = {Ctrl+f};
direct message <_anything> = {Ctrl+k} Wait(100)$1;
(Set active|set away ) = "/away" Wait(100) {Enter}{Enter};

