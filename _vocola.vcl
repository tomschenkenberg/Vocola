# Global voice commands
#

(persoonlijke e-mail|personal email) = 'tom@schenkenberg.nl';
(business email | work email | werk email | Ibuildings email) = 'tom@ibuildings.nl';
(mijn volledige naam|my full name) = 'Tom Schenkenberg';
(mijn telefoonnummer|my phone number) = '+31 6 11 600 692';



DNS afsluiten            = SendSystemKeys( {NumKey*} ) Wait(100) e;
spreekpauze = GoToSleep();

open wachtwoordmanager = ShellExecute("C:\Program Files (x86)\1Password 4\1Password.exe");

