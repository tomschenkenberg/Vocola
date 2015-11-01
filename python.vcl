# Voice commands for python
# 
# ENGLISH ONLY

#
# controlling the IDE
#
help <_anything> = 'help($1)'{Enter};
quit program = {Enter} 'quit()'{Enter};

#
# writing language
#
print <_anything> = 'print("$1")'{Enter};
create input <_anything> = '$1 = input("$1? ")'{Enter};
import module <_anything> = 'import $1'{Enter};
create function <_anything> = 'def $1():'{Enter}{Tab};
call function <_anything> = '$1()'{Left};
