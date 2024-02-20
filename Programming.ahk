#Requires AutoHotkey v2.0

global firstKey := ""
global firstBaseKey := ""
global secondKey := ""
global secondBaseKey := ""
global queue := []

$`::MapKey("``", "``", DefaultMapping)
$+`::MapKey("``", "{~}", DiscardingMapping)

$1::MapKey("1", "1", DefaultMapping)
$+1::MapKey("1", "{!}", DiscardingMapping)

$2::MapKey("2", "2", DefaultMapping)
$+2::MapKey("2", "{@}", DiscardingMapping)

$3::MapKey("3", "3", DefaultMapping)
$+3::MapKey("3", "{#}", DiscardingMapping)

$4::MapKey("4", "4", DefaultMapping)
$+4::MapKey("4", "{$}", DiscardingMapping)

$5::MapKey("5", "5", DefaultMapping)
$+5::MapKey("5", "{%}", DiscardingMapping)

$6::MapKey("6", "6", DefaultMapping)
$+6::MapKey("6", "{^}", DiscardingMapping)

$7::MapKey("7", "7", DefaultMapping)
$+7::MapKey("7", "{&}", DiscardingMapping)

$8::MapKey("8", "8", DefaultMapping)
$+8::MapKey("8", "{*}", DiscardingMapping)

$9::MapKey("9", "9", DefaultMapping)
$+9::MapKey("9", "{(}", DiscardingMapping)

$0::MapKey("0", "0", DefaultMapping)
$+0::MapKey("0", "{)}", DiscardingMapping)

$-::MapKey("-", "-", DefaultMapping)
$+-::MapKey("-", "{_}", DiscardingMapping)
 
$=::MapKey("=", "=", DefaultMapping)
$+=::MapKey("=", "{+}", DiscardingMapping)

QMapping(firstKey, secondKey)
{
    if (secondKey = " ")
        return "!{F4}"
    return ""
}

$q::MapKey("q", "q", QMapping)
$+q::MapKey("q", "Q", DefaultMapping)

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
    if (secondKey = " ")
        return "{LWin}"
    return ""
}

$w::MapKey("w", "w", WMapping)
$+w::MapKey("w", "W", DefaultMapping)

EMapping(firstKey, secondKey)
{
    if (secondKey = "m") 
        return "{!}"
    if (secondKey = ",") 
        return "{@}"
    if (secondKey = ".") 
        return "{#}"
    if (secondKey = "j")
        return "{$}"
    if (secondKey = "k")
        return "{%}"
    if (secondKey = "l")
        return "{^}"
    if (secondKey = "u")
        return "{&}"
    if (secondKey = "i")
        return "{_}"
    if (secondKey = "o")
        return "`\"
    if (secondKey = "/")
        return "`|"
    if (secondKey = " ")
        return "{Esc}"
    return ""
}

$e::MapKey("e", "e", EMapping)
$+e::MapKey("e", "E", DefaultMapping)

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

TMapping(firstKey, secondKey)
{
    if (secondKey = " ")
        return "!{Tab}"
    return ""
}

$t::MapKey("t", "t", TMapping)
$+t::MapKey("t", "T", DefaultMapping)

$y::MapKey("y", "y", DefaultMapping)
$+y::MapKey("y", "Y", DefaultMapping)

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

$i::MapKey("i", "i", DefaultMapping)
$+i::MapKey("i", "I", DefaultMapping)

$o::MapKey("o", "o", DefaultMapping)
$+o::MapKey("o", "O", DefaultMapping)

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
    return ""
}

$p::MapKey("p", "p", PMapping)
$+p::MapKey("p", "P", DefaultMapping)

$[::MapKey("[", "[", DiscardingMapping)
$+[::MapKey("[", "{{}", DiscardingMapping)

$]::MapKey("]", "]", DiscardingMapping)
$+]::MapKey("]", "{}}", DiscardingMapping)

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
    if (secondKey = " ")
        return "^{Enter}"
    return ""
}

$a::MapKey("a", "a", AMapping)
$+a::MapKey("a", "A", DefaultMapping)

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
        return "+{up}"
    if (secondKey = "l") 
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
    return ""
}

$s::MapKey("s", "s", SMapping)
$+s::MapKey("s", "S", DefaultMapping)

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
        return "{Enter}"
    return ""
}

$d::MapKey("d", "d", DMapping)
$+d::MapKey("d", "D", DefaultMapping)

FMapping(firstKey, secondKey)
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
    if (secondKey = "m")
        return "``"
    if (secondKey = " ")
        return "{Tab}"
    return ""
}

$f::MapKey("f", "f", FMapping)
$+f::MapKey("f", "F", DefaultMapping)

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

$h::MapKey("h", "h", DefaultMapping)
$+h::MapKey("h", "H", DefaultMapping)

JMapping(firstKey, secondKey)
{
    if (secondKey = " ")
        return "^+,"
    return ""
}

$j::MapKey("j", "j", JMapping)
$+j::MapKey("j", "J", DefaultMapping)

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
    if (secondKey = " ")
        return "^+{Enter}"
    return ""
}

$k::MapKey("k", "k", KMapping)
$+k::MapKey("k", "K", DefaultMapping)

LMapping(firstKey, secondKey)
{
    if (secondKey = " ")
        return "+{Enter}"
    return ""
}

$l::MapKey("l", "l", LMapping)
$+l::MapKey("l", "L", DefaultMapping)

SemiMapping(firstKey, secondKey)
{
    if (secondKey = " ")
        return "^+."
    return ""
}

$;::MapKey(";", ";", SemiMapping)
$+;::MapKey(";", ":", DefaultMapping)

$'::MapKey("`'", "`'", DiscardingMapping)
$+'::MapKey("`'", "`"", DiscardingMapping)

$\::MapKey("`\", "`\", DiscardingMapping)
$+\::MapKey("`\", "`|", DiscardingMapping)

$z::MapKey("z", "z", DefaultMapping)
$+z::MapKey("z", "Z", DefaultMapping)

$x::MapKey("x", "x", DefaultMapping)
$+x::MapKey("x", "X", DefaultMapping)

$c::MapKey("c", "c", DefaultMapping)
$+c::MapKey("c", "C", DefaultMapping)

VMapping(firstKey, secondKey)
{
    if (secondKey = "m") 
        return "1"
    if (secondKey = ",") 
        return "2"
    if (secondKey = ".") 
        return "3"
    if (secondKey = "j")
        return "4"
    if (secondKey = "k")
        return "5"
    if (secondKey = "l")
        return "6"
    if (secondKey = "u")
        return "7"
    if (secondKey = "i")
        return "8"
    if (secondKey = "o")
        return "9"
    if (secondKey = "/")
        return "-"
    if (secondKey = ";")
        return "="
    if (secondKey = "p")
        return "{+}"
    if (secondKey = "n")
        return "0"
    if (secondKey = "h")
        return "*"
    if (secondKey = "y")
        return "/"
    return ""
}

$v::MapKey("v", "v", VMapping)
$+v::MapKey("v", "V", DefaultMapping)

BMapping(firstKey, secondKey)
{
    if (secondKey = "c") 
        return "^b^c"
    if (secondKey = "s") 
        return "^b^s"
    if (secondKey = "a") 
        return "^b^a"
    if (secondKey = "r")
        return "^d^r"
    if (secondKey = "d")
        return "^d^d"
    return ""
}

$b::MapKey("b", "b", BMapping)
$+b::MapKey("b", "B", DefaultMapping)

NMapping(firstKey, secondKey)
{
    if (secondKey = " ")
        return "{asc 0160}"
    return ""
}

$n::MapKey("n", "n", NMapping)
$+n::MapKey("n", "N", DefaultMapping)

$m::MapKey("m", "m", DefaultMapping)
$+M::MapKey("m", "M", DefaultMapping)

$,::MapKey(",", ",", DefaultMapping)
$+,::MapKey(",", "<", DefaultMapping)

$.::MapKey(".", ".", DefaultMapping)
$+.::MapKey(".", ">", DefaultMapping)

$/::MapKey("/", "/", DefaultMapping)
$+?::MapKey("/", "?", DefaultMapping)

SpaceMapping(firstKey, secondKey)
{
    return "^" secondKey
}

$Space::MapKey(" ", " ", SpaceMapping)

DiscardingMapping(firstKey, secondKey)
{
}

DefaultMapping(firstKey, secondKey)
{
    if (secondKey = " ")
        return "^" firstKey
    else
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

            specialResult := mapping.Call(firstKey, releasedKey)
            if (releasedKey = "")
            {
                if (queue.Length > 0 AND NOT combinationHandling)
                {
                    Send firstKey
                    Send secondKey
                    while (queue.Length > 0)
                    {
                        Send queue.Pop()
                    }
                    return
                }
                else if (queue.Length > 0 AND combinationHandling)
                {
                    while (queue.Length > 0)
                    {
                         Send queue.Pop()
                    }
                    return
                }
                else if (secondKey != "")
                {
                    specialResult := mapping.Call(firstKey, secondKey) 
                    Send specialResult
                    combinationHandling := True
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
                if (queue.Length > 0 AND combinationHandling)
                {
                    while (queue.Length > 0)
                    {
                        Send queue.Pop()
                    }
                    return
                }
                else if (queue.Length > 0)
                {
                    Send firstKey
                    Send secondKey
                    while (queue.Length > 0)
                    {
                        Send queue.Pop()
                    }
                    return
                }
                else if (specialResult != "" AND repeatedHandling = False)
                { 
                    Send specialResult
                    secondKey := ""
                    secondBaseKey := ""
                    combinationHandling := True
                    releasedKey := ""
                }
                else if (specialResult != "")
                { 
                    secondKey := ""
                    secondBaseKey := ""
                    combinationHandling := True
                    releasedKey := ""
                    repeatedHandling := False
                }
                else if (releasedKey == " ")
                {
                    Send "^" firstKey
                    return
                }
                else
                {
                    Send firstKey
                    Send secondKey
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