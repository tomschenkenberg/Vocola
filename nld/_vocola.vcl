# vocola file for alternate language: nld
# Global voice commands
#

(persoonlijke e-mail|personal email) 				= 'tom@schenkenberg.nl';
(zakelijke e-mail|business email | work email | werk email | Ibuildings email) 	= 'tom@ibuildings.nl';
(mijn volledige naam|my full name) 				= 'Tom Schenkenberg';
(mijn telefoonnummer|my phone number) 				= '+31 6 11 600 692';

DNS afsluiten            = SendSystemKeys( {NumKey*} ) Wait(100) e;
spreekpauze = GoToSleep();

# specifieke programma's openen:
open (wachtwoordmanager|password manager) = ShellExecute("C:\Program Files (x86)\1Password 4\1Password.exe");
open terminal = ShellExecute("E:\Program-Files\PuTTY\putty.exe") WaitForWindow("PuTTY Configuration*") Repeat(4, {Tab}) {Down};


# schermopname maken via OneNote, en altijd naar clipboard kopiëren;
# levert hetzelfde gedrag op als in OSX
(maak schermopname | schermopname maken )= SendSystemKeys({Win+Shift+S}) WaitForWindow("Locatie selecteren in OneNote","",30000) Repeat(4,{Tab}) {Enter};


Switch Window                        = SendSystemKeys( {Alt+Tab} );
Copy and Switch                      = {Ctrl+a}{Ctrl+c} SendSystemKeys( {Alt+Tab} );
(Switch|Next) View     = {Ctrl+Tab};
(Switch|Next) View <n> = {Ctrl+Tab_$2};
Previous View          = {Ctrl+Shift+Tab};
Previous View <n>      = {Ctrl+Shift+Tab_$1};


## Move and resize windows
<ns> := 0..10;
Window move <direction> = SendSystemKeys({Win+$1});
Window move <direction> <ns> = Repeat($2, SendSystemKeys({Win+$1}));

<n> := 0..30;

# Text Editing

<direction>  := Left | Right | Up | Down;
<richting>  := Links=Left | Rechts=Right | Omhoog=Up | Omlaag=Down;

<left_right> := Left | Right;
<links_rechts> := Links=Left | Rechts=Right;
<start_end> := (Start={Home} | End={End});
<compass> := (North={Shift+Ctrl+Home} | South={Shift+Ctrl+End} |
East={Shift+End} | West={Shift+Home});

### Characters
# implemented elsewhere
#<n> <direction>       = {$2_$1};
Kill (Char | 1 | One) = {Del};
Kill Back [1]         = {Backspace};
Kill <n>              = {Del_$1};
[Kill] Back <n>       = {Backspace_$1};

### Woorden

[Een] Woord <links_rechts>= {Ctrl+$1};
<n> Woorden <links_rechts> = {Ctrl+$2_$1};

Kill (Word|Woord)              = {Right_2}{Ctrl+Left}{Shift+Ctrl+Right}   {Del};
Kill <n> (Words|Woorden)         = {Right_2}{Ctrl+Left}{Shift+Ctrl+Right_$1}{Del};
Kill Back (Word|Woord)         = {Left}{Ctrl+Right}{Shift+Ctrl+Left}   {Del};
Kill Back <n> (Words|Woorden)    = {Left}{Ctrl+Right}{Shift+Ctrl+Left_$1}{Del};

### Lines
Line <start_end>     = $1;
# implemented elsewhere
#New Line             = {Enter};
Line Here            = {Enter}{Left};
Copy Line            = {home}{Shift+End}{Ctrl+c};
Kill Line            = {home}{Shift+End}{Del};
Kill Back Line       = {home}{Shift+Up}  {Shift+Home}{Del};
Kill <n> Lines       = {home}{Shift+Down_$1}{Shift+Home}{Del};
Kill Back <n> Lines  = {home}{Shift+Up_$1}  {Shift+Home}{Del};
Kill Here            = {Shift+End}{Del};
Kill Back Here       = {Shift+Home}{Del};
Duplicate Line       = {home}{Shift+Down}{Shift+Home}{Ctrl+c}{Home}{Ctrl+v};

### Paragraphs
Graph Start          = {Ctrl+Up}{Right}{Home};
Graph End            = {Ctrl+Down}{Left_2}{End};
(Paragraph|Graph) Here = {Enter}{Enter}{Left}{Left};
Open (Graph|Line)    = {Enter}{Enter}{Left};
Copy Graph           = {Ctrl+Down}{Shift+Ctrl+Up}{Ctrl+c};
Kill Graph           = {Ctrl+Down}{Shift+Ctrl+Up}{Del};
Duplicate Graph      = {Ctrl+Down}{Shift+Ctrl+Up}{Ctrl+c}{Home}{Ctrl+v};

### Entire "Flow"
Flow Start           = {Ctrl+Home};
Flow End             = {Ctrl+End};
#New Line             = {Enter};
All           = {Ctrl+a};
Copy All             = {Ctrl+a}{Ctrl+c};
(Cut|Kill) All       = {Ctrl+a}{Ctrl+x};
Kill Flow Here       = {Ctrl+Shift+End} {Ctrl+x};
Kill Back Flow Here  = {Ctrl+Shift+Home}{Ctrl+x};
Replace All          = {Ctrl+a}{Del}{Ctrl+v};

### Selection
Kill That            = {Del};
# implemented elsewhere
#Cut That             = {Ctrl+x};
#Copy That            = {Ctrl+c};
Yank That            = {Ctrl+v};
Paste Here           = ButtonClick() {Ctrl+v};
Duplicate That       = {Ctrl+c}{Left}{Ctrl+v};
Keep That            = {Ctrl+c}{Ctrl+a}{Del}{Ctrl+v};
Select <compass>     = $1;

### Miscellaneous
ZZ = {Ctrl+z};
ZZ <n> = {Ctrl+z_$1};

Camel [Case] That = HeardWord(\Cap,That) HeardWord(compound,that) {Ctrl+Left}
{Shift+Right} HeardWord(\No-Caps,That){Ctrl+Right};
(Cap | Up Case) <n> = {Shift+Right_$2} HeardWord(\All-Caps,That);

include ..\keys.vch;


