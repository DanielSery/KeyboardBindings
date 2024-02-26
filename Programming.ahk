#Requires AutoHotkey v2.0

global firstKey := ""
global firstBaseKey := ""
global secondKey := ""
global secondBaseKey := ""
global queue := []

$`::MapKey("``", "``", DefaultMapping)
$+`::MapKey("``", "{~}", DefaultMapping)

$1::MapKey("1", "1", DefaultMapping)
$+1::MapKey("1", "{!}", DefaultMapping)

$2::MapKey("2", "2", DefaultMapping)
$+2::MapKey("2", "{@}", DefaultMapping)

$3::MapKey("3", "3", DefaultMapping)
$+3::MapKey("3", "{#}", DefaultMapping)

$4::MapKey("4", "4", DefaultMapping)
$+4::MapKey("4", "{$}", DefaultMapping)

$5::MapKey("5", "5", DefaultMapping)
$+5::MapKey("5", "{%}", DefaultMapping)

$6::MapKey("6", "6", DefaultMapping)
$+6::MapKey("6", "{^}", DefaultMapping)

$7::MapKey("7", "7", DefaultMapping)
$+7::MapKey("7", "{&}", DefaultMapping)

$8::MapKey("8", "8", DefaultMapping)
$+8::MapKey("8", "{*}", DefaultMapping)

$9::MapKey("9", "9", DefaultMapping)
$+9::MapKey("9", "{(}", DefaultMapping)

$0::MapKey("0", "0", DefaultMapping)
$+0::MapKey("0", "{)}", DefaultMapping)

$-::MapKey("-", "-", DefaultMapping)
$+-::MapKey("-", "{_}", DefaultMapping)
 
$=::MapKey("=", "=", DefaultMapping)
$+=::MapKey("=", "{+}", DefaultMapping)

QMapping(firstKey, secondKey)
{
    if (secondKey = " ")
        return "!{F4}"

    return ""
}

$q::MapKey("q", "q", QMapping)
$+q::MapKey("q", "Q", DefaultMapping)

AMapping(firstKey, secondKey)
{
    if (secondKey = "w")
        return "^!{right}"
    if (secondKey = "e") 
        return "^!{right}"
    if (secondKey = "b") 
        return "^!{left}"
    if (secondKey = "j") 
        return "{left}"
    if (secondKey = "k") 
        return "{up}"
    if (secondKey = "l") 
        return "{down}"
    if (secondKey = ";")
        return "{right}"
    if (secondKey = "m") 
        return "^{left}"
    if (secondKey = ",")
        return "^{up}"
    if (secondKey = ".") 
        return "^{down}"
    if (secondKey = "/")
        return "^{right}"

    return ""
}

$a::MapKey("a", "a", AMapping)
$+a::MapKey("a", "A", DefaultMapping)

$z::MapKey("z", "z", DefaultMapping)
$+z::MapKey("z", "Z", DefaultMapping)

WMapping(firstKey, secondKey)
{
    if (secondKey = "q") 
        return "#q"
    if (secondKey = "w") 
        return "#w"
    if (secondKey = "e") 
        return "#e"
    if (secondKey = "r") 
        return "#r"
    if (secondKey = "t") 
        return "#t"
    if (secondKey = "y") 
        return "#y"
    if (secondKey = "u") 
        return "#u"
    if (secondKey = "i") 
        return "#i"
    if (secondKey = "o") 
        return "#o"
    if (secondKey = "p") 
        return "#p"
    if (secondKey = "a") 
        return "#a"
    if (secondKey = "s") 
        return "#s"
    if (secondKey = "d") 
        return "#d"
    if (secondKey = "f") 
        return "#f"
    if (secondKey = "g") 
        return "#g"
    if (secondKey = "h") 
        return "#h"
    if (secondKey = "j") 
        return "#j"
    if (secondKey = "k") 
        return "#k"
    if (secondKey = "l") 
        return "#l"
    if (secondKey = "z") 
        return "#z"
    if (secondKey = "x") 
        return "#x"
    if (secondKey = "c") 
        return "#c"
    if (secondKey = "v") 
        return "#v"
    if (secondKey = "b") 
        return "#b"
    if (secondKey = "n") 
        return "#n"
    if (secondKey = "m")
        return "#m"
    if (secondKey = "1") 
        return "#1"
    if (secondKey = "2") 
        return "#2"
    if (secondKey = "3") 
        return "#3"
    if (secondKey = "4") 
        return "#4"
    if (secondKey = "5") 
        return "#5"
    if (secondKey = "6") 
        return "#6"
    if (secondKey = "7") 
        return "#7"
    if (secondKey = "8") 
        return "#8"
    if (secondKey = "9")
        return "#9"
    if (secondKey = "0")
        return "#0"

    if (secondKey = " ")
        return "{LWin}"

    return ""
}

$w::MapKey("w", "w", WMapping)
$+w::MapKey("w", "W", DefaultMapping)

SMapping(firstKey, secondKey)
{
    if (secondKey = "w") 
        return "^!+{right}"
    if (secondKey = "e") 
        return "^!+{right}"
    if (secondKey = "b") 
        return "^!+{left}"
    if (secondKey = "j") 
        return "+{left}"
    if (secondKey = "k") 
        return "+{down}"
    if (secondKey = ";")
        return "+{right}"
    if (secondKey = "m") 
        return "^+{left}"
    if (secondKey = ",")
        return "^+{up}"
    if (secondKey = ".") 
        return "^+{down}"
    if (secondKey = "/")
        return "^+{right}"
    if (secondKey = " ")
        return "#+{s}"

    return ""
}

$s::MapKey("s", "s", SMapping)
$+s::MapKey("s", "S", DefaultMapping)

$x::MapKey("x", "x", DefaultMapping)
$+x::MapKey("x", "X", DefaultMapping)

EMapping(firstKey, secondKey)
{
    if (secondKey = " ")
        return "{Esc}"

    return ""
}

$e::MapKey("e", "e", EMapping)
$+e::MapKey("e", "E", DefaultMapping)

DMapping(firstKey, secondKey)
{
    if (secondKey = "w") 
        return "^!+{right}{Delete}"
    if (secondKey = "e") 
        return "^!+{right}{Delete}"
    if (secondKey = "b") 
        return "^!+{left}{Delete}"
    if (secondKey = "j") 
        return "{Backspace}"
    if (secondKey = "k") 
        return "+{up}{Delete}"
    if (secondKey = "l") 
        return "+{down}{Delete}"
    if (secondKey = ";")
        return "{Delete}"
    if (secondKey = "m") 
        return "^{Backspace}"
    if (secondKey = ",")
        return "^+{up}{Delete}"
    if (secondKey = ".") 
        return "^+{down}{Delete}"
    if (secondKey = "/")
        return "^{Delete}"

    if (secondKey = " ")
        return "{Delete}"

    return ""
}

$d::MapKey("d", "d", DMapping)
$+d::MapKey("d", "D", DefaultMapping)

$c::MapKey("c", "c", DefaultMapping)
$+c::MapKey("c", "C", DefaultMapping)

RMapping(firstKey, secondKey)
{
    if (secondKey = "/") 
        return "!^/" 
    if (secondKey = "a") 
        return "^r^a" 
    if (secondKey = "n") 
        return "^r^r"
    if (secondKey = "s")
        return "^r^s"
    if (secondKey = "v")
        return "^r^v"
    if (secondKey = "f")
        return "^r^f"
    if (secondKey = "p")
        return "^r^p"
    if (secondKey = "m")
        return "^r^m"
    if (secondKey = "d")
        return "^r^d"

    return ""
}

$r::MapKey("r", "r", RMapping)
$+r::MapKey("r", "R", DefaultMapping)

$f::MapKey("f", "f", DefaultMapping)
$+f::MapKey("f", "F", DefaultMapping)

$v::MapKey("v", "v", DefaultMapping)
$+v::MapKey("v", "V", DefaultMapping)

TMapping(firstKey, secondKey)
{
    if (secondKey = " ")
        return "!{Tab}"

    return ""
}

$t::MapKey("t", "t", TMapping)
$+t::MapKey("t", "T", DefaultMapping)

GMapping(firstKey, secondKey)
{
    if (secondKey = "q") 
        return "^+a"
    if (secondKey = "w") 
        return "^n^w"
    if (secondKey = "e") 
        return "^n^e"
    if (secondKey = "u") 
        return "^n^u"
    if (secondKey = "i") 
        return "^n^i"
    if (secondKey = "a")
        return "^i^o"
    if (secondKey = "b") 
        return "^n^b"
    if (secondKey = "d")
        return "^n^d"
    if (secondKey = "h") 
        return "^n^h"
    if (secondKey = "s")
        return "^n^l"
    if (secondKey = "c")
        return "^i^i"
    if (secondKey = "j") 
        return "!{left}"
    if (secondKey = "k") 
        return "^+{F3}"
    if (secondKey = "l") 
        return "^{F3}"
    if (secondKey = ";") 
        return "!{right}"
    if (secondKey = "m") 
        return "^+{left}"
    if (secondKey = ",") 
        return "^+{up}"
    if (secondKey = ".") 
        return "^+{down}"
    if (secondKey = "/") 
        return "^+{right}"

    return ""
}

$g::MapKey("g", "g", GMapping)
$+g::MapKey("g", "G", DefaultMapping)

BMapping(firstKey, secondKey)
{
    if (secondKey = "c") 
        return "^b^c"
    if (secondKey = "s") 
        return "^b^s"
    if (secondKey = "a") 
        return "^b^a"
    if (secondKey = "r")
        return "^b^r"
    if (secondKey = "d")
        return "^b^d"
    if (secondKey = "w")
        return "^b^w"

    return ""
}

$b::MapKey("b", "b", BMapping)
$+b::MapKey("b", "B", DefaultMapping)

$y::MapKey("y", "y", DefaultMapping)
$+y::MapKey("y", "Y", DefaultMapping)

$h::MapKey("h", "h", DefaultMapping)
$+h::MapKey("h", "H", DefaultMapping)

$n::MapKey("n", "n", DefaultMapping)
$+n::MapKey("n", "N", DefaultMapping)

UMapping(firstKey, secondKey)
{
    if (secondKey = "r") 
        return "^u^r"
    if (secondKey = "d") 
        return "^u^d"
    if (secondKey = "c") 
        return "^u^c"
    if (secondKey = "e")
        return "^u^e"
    if (secondKey = "s")
        return "^u^s"
    if (secondKey = "a")
        return "^u^a"

    return ""
}

$u::MapKey("u", "u", UMapping)
$+u::MapKey("u", "U", DefaultMapping)

$j::MapKey("j", "j", DefaultMapping)
$+j::MapKey("j", "J", DefaultMapping)

MMapping(firstKey, secondKey)
{
    if (secondKey = " ") 
        return "{Volume_Mute}"

    return ""
}

$m::MapKey("m", "m", MMapping)
$+M::MapKey("m", "M", DefaultMapping)

$i::MapKey("i", "i", DefaultMapping)
$+i::MapKey("i", "I", DefaultMapping)

KMapping(firstKey, secondKey)
{
    if (secondKey = "c") 
        return "^k^c"
    if (secondKey = "r") 
        return "^k^r"
    if (secondKey = "t") 
        return "^k^t"
    if (secondKey = "b")
        return "^k^b"
    if (secondKey = "a")
        return "^k^a"
    if (secondKey = "h")
        return "^k^h"
    if (secondKey = "s")
        return "^k^k"
    if (secondKey = "l")
        return "^k^l"
    if (secondKey = "p")
        return "^k^p"
    if (secondKey = "z")
        return "^k^z"
    if (secondKey = "f")
        return "^k^f"
    if (secondKey = "b")
        return "^k^b"
    if (secondKey = "m")
        return "^k^m"

    return ""
}

$k::MapKey("k", "k", KMapping)
$+k::MapKey("k", "K", DefaultMapping)

CommaMapping(firstKey, secondKey)
{
    if (secondKey = " ")
        return "{Volume_Up}"

    return ""
}

$,::MapKey(",", ",", CommaMapping)
$+,::MapKey(",", "<", DefaultMapping)

$o::MapKey("o", "o", DefaultMapping)
$+o::MapKey("o", "O", DefaultMapping)

$l::MapKey("l", "l", DefaultMapping)
$+l::MapKey("l", "L", DefaultMapping)

DotMapping(firstKey, secondKey)
{
    if (secondKey = " ")
        return "{Volume_Down}"

    return ""
}

$.::MapKey(".", ".", DotMapping)
$+.::MapKey(".", ">", DefaultMapping)

PMapping(firstKey, secondKey)
{
    if (secondKey = "w") 
        return "^d^w"
    if (secondKey = "e") 
        return "^d^e"
    if (secondKey = "r") 
        return "{F5}"
    if (secondKey = "i") 
        return "{F11}"
    if (secondKey = "o") 
        return "{F10}"
    if (secondKey = "a") 
        return "^d^e"
    if (secondKey = "s") 
        return "^d^e"
    if (secondKey = "f") 
        return "^d^f"
    if (secondKey = "c") 
        return "^d^c"
    if (secondKey = "b") 
        return "{F9}"

    if (secondKey = " ")
        return "{PrtSc}"

    return ""
}

$p::MapKey("p", "p", PMapping)
$+p::MapKey("p", "P", DefaultMapping)

SemiMapping(firstKey, secondKey)
{
    if (secondKey = "a")
        return "á"
    if (secondKey = "A")
        return "á"
    if (secondKey = "e")
        return "é"
    if (secondKey = "E")
        return "é"
    if (secondKey = "i")
        return "í"
    if (secondKey = "I")
        return "í"
    if (secondKey = "o")
        return "ó"
    if (secondKey = "O")
        return "ó"
    if (secondKey = "u")
        return "ú"
    if (secondKey = "U")
        return "ú"
    if (secondKey = "y")
        return "ý" 
    if (secondKey = "Y")
        return "ý"

    return ""
}

$;::MapKey(";", ";", SemiMapping)

ColumnMapping(firstKey, secondKey)
{
    if (secondKey = "a")
        return "Á"
    if (secondKey = "A")
        return "Á"
    if (secondKey = "e")
        return "É"
    if (secondKey = "E")
        return "É"
    if (secondKey = "i")
        return "Í"
    if (secondKey = "I")
        return "Í"
    if (secondKey = "o")
        return "Ó"
    if (secondKey = "O")
        return "Ó"
    if (secondKey = "u")
        return "Ú"
    if (secondKey = "U")
        return "Ú"
    if (secondKey = "y")
        return "Ý" 
    if (secondKey = "Y")
        return "Ý"

    return ""
}

$+;::MapKey(";", ":", ColumnMapping)

SlashMapping(firstKey, secondKey)
{
    if (secondKey = "e") 
        return "ě"
    if (secondKey = "E") 
        return "ě"
    if (secondKey = "r") 
        return "ř"
    if (secondKey = "R") 
        return "ř"
    if (secondKey = "t") 
        return "ť"
    if (secondKey = "T") 
        return "ť"
    if (secondKey = "u")
        return "ů"
    if (secondKey = "s") 
        return "š"
    if (secondKey = "S") 
        return "š"
    if (secondKey = "d") 
        return "ď"
    if (secondKey = "D") 
        return "ď"
    if (secondKey = "z") 
        return "ž"
    if (secondKey = "Z") 
        return "ž"
    if (secondKey = "c") 
        return "č"
    if (secondKey = "C") 
        return "č"
    if (secondKey = "n") 
        return "ň"
    if (secondKey = "N") 
        return "ň"

    return ""
}

$/::MapKey("/", "/", SlashMapping)

QuestionMapping(firstKey, secondKey)
{
    if (secondKey = "e") 
        return "Ě"
    if (secondKey = "E") 
        return "Ě"
    if (secondKey = "r") 
        return "Ř"
    if (secondKey = "R") 
        return "Ř"
    if (secondKey = "t") 
        return "Ť"
    if (secondKey = "T") 
        return "Ť"
    if (secondKey = "u")
        return "ů"
    if (secondKey = "s") 
        return "Š"
    if (secondKey = "S") 
        return "Š"
    if (secondKey = "d") 
        return "Ď"
    if (secondKey = "D") 
        return "Ď"
    if (secondKey = "z") 
        return "Ž"
    if (secondKey = "Z") 
        return "Ž"
    if (secondKey = "c") 
        return "Č"
    if (secondKey = "C") 
        return "Č"
    if (secondKey = "n") 
        return "Ň"
    if (secondKey = "N") 
        return "Ň"

    return "" 
}
$+?::MapKey("/", "?", QuestionMapping)

$]::MapKey("]", "]", DefaultMapping)
$+]::MapKey("]", "{}}", DefaultMapping)

$\::MapKey("`\", "`\", DefaultMapping)
$+\::MapKey("`\", "`|", DefaultMapping)

AltMapping(firstKey, secondKey)
{
    if (secondKey = "q") 
        return "!q" 
    if (secondKey = "w") 
        return "!w" 
    if (secondKey = "e") 
        return "!e"
    if (secondKey = "r")
        return "!r"
    if (secondKey = "t")
        return "!t"
    if (secondKey = "y")
        return "!y"
    if (secondKey = "u")
        return "!u"
    if (secondKey = "i")
        return "!i"
    if (secondKey = "o")
        return "!o"
    if (secondKey = "p")
        return "!p"

    if (secondKey = "a")
        return "!a"
    if (secondKey = "s")
        return "!s"
    if (secondKey = "d")
        return "!d"
    if (secondKey = "f")
        return "!f"
    if (secondKey = "g")
        return "!g"
    if (secondKey = "h")
        return "!h"
    if (secondKey = "j")
        return "!j"
    if (secondKey = "k")
        return "!k"
    if (secondKey = "l")
        return "!l"
    if (secondKey = ";")
        return "!;"

    if (secondKey = "z")
        return "!z"
    if (secondKey = "x")
        return "!x"
    if (secondKey = "c")
        return "!c"
    if (secondKey = "v")
        return "!v"
    if (secondKey = "b")
        return "!b"
    if (secondKey = "n")
        return "!n"
    if (secondKey = "m")
        return "!m"
    if (secondKey = ",")
        return "!,"
    if (secondKey = ".}")
        return "!."
    if (secondKey = "/")
        return "!/"

    return ""
}

$Tab::MapKey("Tab", "{Tab}", AltMapping)
$+Tab::MapKey("Tab", "+{Tab}", AltMapping)

$[::MapKey("[", "{Backspace}", AltMapping)
$+[::MapKey("[", "{{}", AltMapping)

ControlMapping(firstKey, secondKey)
{
    if (secondKey = "q") 
        return "^q" 
    if (secondKey = "w") 
        return "^w" 
    if (secondKey = "e") 
        return "^e"
    if (secondKey = "r")
        return "^r"
    if (secondKey = "t")
        return "^t"
    if (secondKey = "y")
        return "^y"
    if (secondKey = "u")
        return "^u"
    if (secondKey = "i")
        return "^i"
    if (secondKey = "o")
        return "^o"
    if (secondKey = "p")
        return "^p"

    if (secondKey = "a")
        return "^a"
    if (secondKey = "s")
        return "^s"
    if (secondKey = "d")
        return "^d"
    if (secondKey = "f")
        return "^f"
    if (secondKey = "g")
        return "^g"
    if (secondKey = "h")
        return "^h"
    if (secondKey = "j")
        return "^j"
    if (secondKey = "k")
        return "^k"
    if (secondKey = "l")
        return "^l"
    if (secondKey = ";")
        return "^;"

    if (secondKey = "z")
        return "^z"
    if (secondKey = "x")
        return "^x"
    if (secondKey = "c")
        return "^c"
    if (secondKey = "v")
        return "^v"
    if (secondKey = "b")
        return "^b"
    if (secondKey = "n")
        return "^n"
    if (secondKey = "m")
        return "^m"
    if (secondKey = ",")
        return "^,"
    if (secondKey = ".}")
        return "^."
    if (secondKey = "/")
        return "^/"
    if (secondKey = "{Enter}")
        return "^{Enter}"
    if (secondKey = "{Delete}")
        return "^{Delete}"

    return ""
}

$CapsLock::MapKey("CapsLock", "{Delete}", ControlMapping)
$+CapsLock::MapKey("CapsLock", "{Delete}", ControlMapping)

$'::MapKey("`'", "{Enter}", ControlMapping)
$+'::MapKey("`'", "{Enter}", ControlMapping)

SpaceMapping(firstKey, secondKey)
{
    if (secondKey = "j") 
        return "(" 
    if (secondKey = "k") 
        return ")" 
    if (secondKey = "l") 
        return "{[}"
    if (secondKey = ";")
        return "{]}"
    if (secondKey = "u")
        return "{{}"
    if (secondKey = "i")
        return "{}}"
    if (secondKey = "o")
        return "`""
    if (secondKey = "p")
        return "`'"
    if (secondKey = "{Backspace}")
        return "``"

    if (secondKey = "v")
        return "-"
    if (secondKey = "f")
        return "="
    if (secondKey = "r")
        return "{+}"
    if (secondKey = "e")
        return "*"
    if (secondKey = "c")
        return "/"
    if (secondKey = "x")
        return "%"
    if (secondKey = "w")
        return "{^}"

    if (secondKey = "g")
        return "{!}"
    if (secondKey = "t")
        return "`|"
    if (secondKey = "b")
        return "&"

    if (secondKey = "a")
        return "{$}"
    if (secondKey = "q")
        return "{#}"
    if (secondKey = "z")
        return "@"

    if (secondKey = "h")
        return "{_}"
    if (secondKey = "/") 
        return "\"
    if (secondKey = "n")
        return "{asc 0160}"

    return ""
}

$Space::MapKey(" ", " ", SpaceMapping)
$Enter::MapKey("Enter", "{Enter}", DefaultMapping)

DefaultMapping(firstKey, secondKey)
{
    return ""
}

MapKey(baseKey, key, mapping)
{
    global firstKey
    global firstBaseKey
    global secondKey
    global secondBaseKey
    global queue

    if (firstKey != "")
    {
        if (secondKey = "")
        {
            secondKey := key
            secondBaseKey := baseKey
        }
        else
        {
            queue.Push(key)
        }
        
        return
    }

    try
    {
        firstKey := key
        firstBaseKey := baseKey
        combinationHandling := False
        repeatedHandling := False

        while (True)
        {
            startTime := A_TickCount
            while (GetKeyState(firstBaseKey, "P") AND
                (secondBaseKey = "" OR GetKeyState(secondBaseKey, "P")) AND
                queue.Length = 0 AND
                (NOT repeatedHandling OR A_TickCount - startTime < 100))
            {
                Sleep(10)

                if (A_TickCount - startTime > 600)
                {
                    repeatedHandling := True
                    break
                }
            }
            
            releasedKey := ""
            if (NOT GetKeyState(firstBaseKey, "P"))
            {
                releasedKey := firstKey
            }
            else if (secondKey != "" AND NOT GetKeyState(secondBaseKey, "P"))
            {
                releasedKey := secondKey
            }

            if (queue.Length > 0)
            {
                popped := queue.Pop()
                if (popped != secondKey)
                    queue.Push(popped)
            }

            if (releasedKey = "")
            {
                specialResult := mapping.Call(firstKey, secondKey)
                if (specialResult != "")
                {
                    combinationHandling := True
                    Send specialResult

                    while (queue.Length > 0)
                    {
                        toProcess := queue.Pop()
                        specialResult := mapping.Call(firstKey, toProcess)
                        if (specialResult != "")
                        {
                            Send specialResult
                        }
                    }

                    secondKey := ""
                    secondBaseKey := ""
                }
                else if (queue.Length > 0 AND combinationHandling)
                {
                    while (queue.Length > 0)
                    {
                        toProcess := queue.Pop()
                        specialResult := mapping.Call(firstKey, toProcess)
                        if (specialResult != "")
                        {
                            Send specialResult
                        }
                    }
                }
                else if (combinationHandling)
                {
                }
                else if (secondKey != "")
                {
                    Send firstKey
                    Send secondKey
                    return
                }
            }
            else if (releasedKey = firstKey)
            {
                if (secondKey != "")
                {
                    Send firstKey
                    Send secondKey
                    while (queue.Length > 0)
                    {
                        Send queue.Pop()
                    }
                }
                else if (NOT combinationHandling)
                {
                    Send releasedKey
                }
                
                return
            }
            else
            {
                specialResult := mapping.Call(firstKey, releasedKey)
                if (specialResult != "" AND repeatedHandling = False)
                { 
                    Send specialResult
                    combinationHandling := True
                    
                    while (queue.Length > 0)
                    {
                        toProcess := queue.Pop()
                        specialResult := mapping.Call(firstKey, toProcess)
                        if (specialResult != "")
                        {
                            Send specialResult
                        }
                    }

                    releasedKey := ""
                    secondKey := ""
                    secondBaseKey := ""
                }
                else if (specialResult != "")
                { 
                    combinationHandling := True
                    
                    while (queue.Length > 0)
                    {
                        toProcess := queue.Pop()
                        specialResult := mapping.Call(firstKey, toProcess)
                        if (specialResult != "")
                        {
                            Send specialResult
                        }
                    }

                    secondKey := ""
                    secondBaseKey := ""
                    releasedKey := ""
                    repeatedHandling := False
                }
                if (queue.Length > 0 AND combinationHandling)
                {
                    while (queue.Length > 0)
                    {
                        Send queue.Pop()
                    }
                    return
                }
                else if (combinationHandling)
                {
                }
                else
                {
                    Send firstKey
                    Send secondKey
                    while (queue.Length > 0)
                    {
                        Send queue.Pop()
                    }
                    return
                }
            }
        }
    }
    finally
    {
        firstKey := ""
        firstBaseKey := ""
        secondKey := ""
        secondBaseKey := ""
    }
}