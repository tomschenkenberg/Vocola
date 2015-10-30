include Unimacro.vch;
# Voice commands for putty

(list | Ellis) = "ls -las{Enter}";
CD <_anything> = "cd $1{Enter}";
CD up = "cd ..{Enter}";
change directory = "cd ";
exit = "exit{Enter}";
(clear | clear screen | CLS ) = clear{Enter};
uptime = uptime{Enter};
who am I = whoami{Enter};
where am I = pwd{Enter};
list processes = clear{Enter}"ps axf"{Enter};
process tree = pstree{Enter};
(discs|disk space ) = "df -h"{Enter};
repeat = {Up}{Enter};
go home = cd{Enter}clear{Enter}pwd{Enter}"ls -las"{Enter};
edit secure shell = "vi /etc/ssh/sshd_config"{Enter};

update packages = "apt-get update"{Enter};
upgrade packages = "apt-get upgrade"{Enter};
say yes = {Y}{Enter};


#
# vim commands:
#
vim abandon = {Esc}:q!{Enter};
(vim save and close | vim exit | vim quit)= {Esc} ":wq" {Enter};


