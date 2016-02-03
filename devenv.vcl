# Voice commands for devenv
#
# this is for Microsoft Visual Studio version 2015, Python development
# So this is assuming that indentation is covered by the IDE.
#
# ENGLISH ONLY
#
save file = {Ctrl+s};
save all = {Ctrl+Shift+s};
open project = {Ctrl+Shift+o};

python interactive = {Alt+i};
execute [interactive] = {Ctrl+s}{Shift+Alt+F5};
help <_anything> = 'help($1)'{Enter};

# save the file, execute interactive and switch back to the edit window focus:
exec = {Ctrl+s}{Shift+Alt+F5} Wait(2000) {Ctrl+Shift+Tab};

include python_language.vcl;
