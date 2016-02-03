#
# writing python language
#
<n> := 0..100;

# user input:
insert input <_anything> 	= '$1 = input("$1? ")'{Enter};
insert raw input <_anything> = '$1 = raw_input("$1")'{Enter};

# modules:
import module time 			= 'import time as t' {Enter};
import module OS path 		= 'from os import path' {Enter};
import module random int   	= 'from random import randint' {Enter};
import module <_anything> 	= 'import $1' {Enter};

# printing:
print <_anything> 		= "print('$1')"  {Enter};
print var <_anything> 	= 'print($1)'  {Enter};

# functions:
create function <_anything> 			= 'def $1():'{Enter};
create function <_anything> with args     	= "def $1(*args):"{Enter}"for arg in args:"{Enter}"print(arg)";
call function <_anything> 				= '$1()'{Left};

# loops:
insert while loop 		= "while(true):"{Enter}"if():"{Enter}"break"{Up}{Left}{Left};
insert for range <n> 		= "for i in range($1):"{Enter}"print(i)"{left}{left}; 
insert <n> seconds loop     = "starttime=t.clock()"{Enter} "while (starttime+$1>t.clock()):"{Enter};

# common vars:
create var date 			= 'date = t.localtime(t.time())' {Enter};

# files
open file for writing 		= "f = open(filename, 'w')" {Enter};
write to file <_anything> 	= "f.write('$1\n')"{Enter};
close file 				= "f.close()" {enter};

