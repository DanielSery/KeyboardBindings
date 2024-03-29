#Requires AutoHotkey v2.0

global firstKey := ""
global firstBaseKey := ""
global secondKey := ""
global secondBaseKey := ""
global queue := []

$`::MapKey("``", "``", DefaultMapping)
$+`::MapKey("``", "{~}", DefaultMapping)
$Tab::MapKey("Tab", "{Tab}", WindowsMapping)
$+Tab::MapKey("Tab", "+{Tab}", WindowsShiftMapping)
$CapsLock::MapKey("CapsLock", "{Delete}", ActionMapping)
$+CapsLock::MapKey("CapsLock", "{Delete}", ActionMapping)

$1::MapKey("1", "1", DefaultMapping)
$+1::MapKey("1", "{!}", DefaultMapping)
$q::MapKey("q", "q", VovelsMapping)
$+q::MapKey("q", "Q", VovelsMapping)
$a::MapKey("a", "a", MoveMapping)
$+a::MapKey("a", "A", MoveMapping)
$z::MapKey("z", "z", DefaultMapping)
$+z::MapKey("z", "Z", DefaultMapping)

$2::MapKey("2", "2", DefaultMapping)
$+2::MapKey("2", "{@}", DefaultMapping)
$w::MapKey("w", "w", ConsonantsMapping)
$+w::MapKey("w", "W", ConsonantsMapping)
$s::MapKey("s", "s", SelectMapping)
$+s::MapKey("s", "S", SelectMapping)
$x::MapKey("x", "x", DefaultMapping)
$+x::MapKey("x", "X", DefaultMapping)

$3::MapKey("3", "3", DefaultMapping)
$+3::MapKey("3", "{#}", DefaultMapping)
$e::MapKey("e", "e", NumericMapping)
$+e::MapKey("e", "E", NumericMapping)
$d::MapKey("d", "d", DeleteMapping)
$+d::MapKey("d", "D", DeleteMapping)
$c::MapKey("c", "c", ConflictMapping)
$+c::MapKey("c", "C", ConflictMapping)

$4::MapKey("4", "4", DefaultMapping)
$+4::MapKey("4", "{$}", DefaultMapping)
$r::MapKey("r", "r", RefactorMapping)
$+r::MapKey("r", "R", RefactorMapping)
$f::MapKey("f", "f", SpecialMapping)
$+f::MapKey("f", "F", SpecialMapping)
$v::MapKey("v", "v", DefaultMapping)
$+v::MapKey("v", "V", DefaultMapping)

$5::MapKey("5", "5", DefaultMapping)
$+5::MapKey("5", "{%}", DefaultMapping)
$t::MapKey("t", "t", DefaultMapping)
$+t::MapKey("t", "T", DefaultMapping)
$g::MapKey("g", "g", GotoMapping)
$+g::MapKey("g", "G", GotoMapping)
$b::MapKey("b", "b", BuildMapping)
$+b::MapKey("b", "B", BuildMapping)

$6::MapKey("6", "6", DefaultMapping)
$+6::MapKey("6", "{^}", DefaultMapping)
$y::MapKey("y", "y", DefaultMapping)
$+y::MapKey("y", "Y", DefaultMapping)
$h::MapKey("h", "h", DefaultMapping)
$+h::MapKey("h", "H", DefaultMapping)
$n::MapKey("n", "n", DefaultMapping)
$+n::MapKey("n", "N", DefaultMapping)

$7::MapKey("7", "7", DefaultMapping)
$+7::MapKey("7", "{&}", DefaultMapping)
$u::MapKey("u", "u", UnitTestMapping)
$+u::MapKey("u", "U", UnitTestMapping)
$j::MapKey("j", "j", SpecialMapping)
$+j::MapKey("j", "J", SpecialMapping)
$m::MapKey("m", "m", DefaultMapping)
$+M::MapKey("m", "M", DefaultMapping)

$8::MapKey("8", "8", DefaultMapping)
$+8::MapKey("8", "{*}", DefaultMapping)
$i::MapKey("i", "i", ProcessInspectionMapping)
$+i::MapKey("i", "I", ProcessInspectionMapping)
$k::MapKey("k", "k", SourceControlMapping)
$+k::MapKey("k", "K", SourceControlMapping)
$,::MapKey(",", ",", DefaultMapping)
$+,::MapKey(",", "<", DefaultMapping)

$9::MapKey("9", "9", DefaultMapping)
$+9::MapKey("9", "{(}", DefaultMapping)
$o::MapKey("o", "o", ConsonantsMapping)
$+o::MapKey("o", "O", CapitalConsonantsMapping)
$l::MapKey("l", "l", DefaultMapping)
$+l::MapKey("l", "L", DefaultMapping)
$.::MapKey(".", ".", DefaultMapping)
$+.::MapKey(".", ">", DefaultMapping)

$0::MapKey("0", "0", DefaultMapping)
$+0::MapKey("0", "{)}", DefaultMapping)
$p::MapKey("p", "p", VovelsMapping)
$+p::MapKey("p", "P", CapitalVovelsMapping)
$;::MapKey(";", ";", DefaultMapping)
$+;::MapKey(";", ":", DefaultMapping)
$/::MapKey("/", "/", DefaultMapping)
$+?::MapKey("/", "?", DefaultMapping)

$[::MapKey("[", "{[}", WindowsMapping)
$+[::MapKey("[", "{{}", WindowsShiftMapping)
$'::MapKey("`'", "`'", ActionMapping)
$+'::MapKey("`'", "`"", ActionMapping)

$Space::MapKey(" ", " ", ControlMapping)
$+Space::MapKey(" ", " ", ControlShiftMapping)
$Enter::MapKey("Enter", "{Enter}", DefaultMapping)

$-::MapKey("-", "-", DefaultMapping)
$+-::MapKey("-", "{_}", DefaultMapping)
$=::MapKey("=", "=", DefaultMapping)
$+=::MapKey("=", "{+}", DefaultMapping)
$]::MapKey("]", "]", DefaultMapping)
$+]::MapKey("]", "{}}", DefaultMapping)
$\::MapKey("`\", "`\", DefaultMapping)
$+\::MapKey("`\", "`|", DefaultMapping)

SpecialMapping(firstKey, secondKey)
{
    if (secondKey = "m")
        return "="
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
    if (secondKey = ",")
        return "<"
    if (secondKey = ".")
        return ">"
    if (secondKey = "o")
        return "`""
    if (secondKey = "p")
        return "`'"
    if (secondKey = "{[}")
        return "``"

    if (secondKey = "q")
        return "{!}"
    if (secondKey = "a")
        return "&"
    if (secondKey = "z")
        return "`|"

    if (secondKey = "w")
        return "{@}"

    if (secondKey = "e")
        return "{#}"

    if (secondKey = "r")
        return "{$}"

    if (secondKey = "f")
        return "{_}"
    if (secondKey = "d")
        return "="

    if (secondKey = "/") 
        return "\"

    if (secondKey = "n")
        return "{asc 0160}"
        
    if (secondKey = " ")
        return "^" firstKey

    return ""
}

ActionMapping(firstKey, secondKey)
{
    if (secondKey = "q")
        return "!{F4}"
    if (secondKey = "s")
        return "#+{s}"
    if (secondKey = "p")
        return "^+{Esc}"
    if (secondKey = "t")
        return "!{Tab}"
    if (secondKey = "l")
        return "^+{L}"
    if (secondKey = "m") 
        return "{Volume_Mute}"
    if (secondKey = ",")
        return "{Volume_Up}"
    if (secondKey = ".")
        return "{Volume_Down}"
    if (secondKey = " ")
        return "^{Space}"
        
    if (secondKey = " ")
        return "^" firstKey

    return ""
}

MoveMapping(firstKey, secondKey)
{
    if (secondKey = "t") 
        return "{Tab}" 
        
    if (secondKey = "h") 
        return "^{left}" 
        
    if (secondKey = "u") 
        return "^!{left}"
    if (secondKey = "j") 
        return "{left}"
    if (secondKey = "m") 
        return "^{left}" 
        
    if (secondKey = "i") 
        return "{PgUp}"
    if (secondKey = "k") 
        return "{up}"
        
    if (secondKey = "o") 
        return "{PgDn}"
    if (secondKey = "l")
        return "{down}"
        
    if (secondKey = "p") 
        return "^!{right}"
    if (secondKey = ";")
        return "{right}"
    if (secondKey = "/")
        return "^{right}"
        
    if (secondKey = "'")
        return "^{right}"
        
    if (secondKey = " ")
        return "{Enter}"

    return ""
}

SelectMapping(firstKey, secondKey)
{
    if (secondKey = "h") 
        return "+^{left}" 
        
    if (secondKey = "u") 
        return "+^!{left}"
    if (secondKey = "j") 
        return "+{left}"
    if (secondKey = "m") 
        return "+^{left}" 
        
    if (secondKey = "i") 
        return "+{PgUp}"
    if (secondKey = "k") 
        return "+{up}"
        
    if (secondKey = "o") 
        return "+{PgDn}"
    if (secondKey = "l")
        return "+{down}"
        
    if (secondKey = "p") 
        return "+^!{right}"
    if (secondKey = ";")
        return "+{right}"
    if (secondKey = "/")
        return "+^{right}"
        
    if (secondKey = "'")
        return "+^{right}"
        
    if (secondKey = " ")
        return "^" firstKey

    return ""
}

DeleteMapping(firstKey, secondKey)
{
    if (secondKey = "h") 
        return "^{Backspace}" 
        
    if (secondKey = "u") 
        return "+^!{left}{Delete}"
    if (secondKey = "j")
        return "{Backspace}"
    if (secondKey = "m") 
        return "^{Backspace}" 
        
    if (secondKey = "i") 
        return "+{PgUp}{Delete}"
    if (secondKey = "k") 
        return "+{up}{Delete}"
        
    if (secondKey = "o") 
        return "+{PgDn}{Delete}"
    if (secondKey = "l")
        return "+{down}{Delete}"
        
    if (secondKey = "p") 
        return "+^!{right}{Delete}"
    if (secondKey = ";")
        return "{Delete}"
    if (secondKey = "/")
        return "^{Delete}"
        
    if (secondKey = "'")
        return "^{Delete}"
        
    if (secondKey = " ")
        return "^" firstKey

    return ""
}

RefactorMapping(firstKey, secondKey)
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
        
    if (secondKey = " ")
        return "^" firstKey

    return ""
}

ConflictMapping(firstKey, secondKey)
{
    if (secondKey = "j") 
        return "^m^l"
    if (secondKey = "k") 
        return "^m^p"
    if (secondKey = "l") 
        return "^m^n"
    if (secondKey = ";") 
        return "^m^r"
        
    if (secondKey = " ")
        return "^" firstKey
        
    return ""
}

GotoMapping(firstKey, secondKey)
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
        return "+{F3}"
    if (secondKey = "l") 
        return "{F3}"
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
        
    if (secondKey = " ")
        return "^" firstKey
        
    return ""
}

BuildMapping(firstKey, secondKey)
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
        
    if (secondKey = " ")
        return "^" firstKey
        
    return ""
}

UnitTestMapping(firstKey, secondKey)
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
        
    if (secondKey = " ")
        return "^" firstKey
        
    return ""
}

SourceControlMapping(firstKey, secondKey)
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
    if (secondKey = "v")
        return "^k^v"
    if (secondKey = "e")
        return "^k^i"
        
    if (secondKey = " ")
        return "^" firstKey
        
    return ""
}

ProcessInspectionMapping(firstKey, secondKey)
{
    if (secondKey = "w") 
        return "^d^w"
    if (secondKey = "e") 
        return "^d^e"
    if (secondKey = "r") 
        return "{F5}"
    if (secondKey = "u") 
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
        return "^" firstKey
        
    return ""
}

NumericMapping(firstKey, secondKey)
{
    if (secondKey = "n") 
        return "0" 
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
    
    if (secondKey = ";") 
        return "=" 
    if (secondKey = "p") 
        return "{+}" 
    if (secondKey = "/") 
        return "-" 
    if (secondKey = "{[}")
        return "*"
    if (secondKey = "'")
        return "{/}"
    if (secondKey = "y") 
        return "{^}"
    if (secondKey = "h") 
        return "{%}" 
        
    if (secondKey = "9") 
        return "{(}" 
    if (secondKey = "0") 
        return "{)}" 
        
    if (secondKey = " ")
        return " "
        
    return ""
}

CapitalVovelsMapping(firstKey, secondKey)
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
        
    if (secondKey = " ")
        return "^" firstKey
        
    return ""
}

VovelsMapping(firstKey, secondKey)
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
        
    if (secondKey = " ")
        return "^" firstKey
        
    return ""
}

CapitalConsonantsMapping(firstKey, secondKey)
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
        
    if (secondKey = " ")
        return "^" firstKey
        
    return ""
}

ConsonantsMapping(firstKey, secondKey)
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
        
    if (secondKey = " ")
        return "^" firstKey
        
    return ""
}

ModificatorMapping(firstKey, secondKey, modificator)
{
    if (secondKey = "1")
        return modificator "1" 
    if (secondKey = "2")
        return modificator "2" 
    if (secondKey = "3") 
        return modificator "3" 
    if (secondKey = "4") 
        return modificator "4" 
    if (secondKey = "5") 
        return modificator "5"
    if (secondKey = "6") 
        return modificator "6"
    if (secondKey = "7")
        return modificator "7"
    if (secondKey = "8")
        return modificator "8"
    if (secondKey = "9")
        return modificator "9"
    if (secondKey = "0")
        return modificator "0"
    if (secondKey = "-")
        return modificator "-"
        
    if (secondKey = "q")
        return modificator "q" 
    if (secondKey = "Q")
        return modificator "Q" 
    if (secondKey = "w") 
        return modificator "w" 
    if (secondKey = "W") 
        return modificator "W" 
    if (secondKey = "e") 
        return modificator "e"
    if (secondKey = "E") 
        return modificator "E"
    if (secondKey = "r")
        return modificator "r"
    if (secondKey = "R")
        return modificator "R"
    if (secondKey = "t")
        return modificator "t"
    if (secondKey = "T")
        return modificator "T"
    if (secondKey = "y")
        return modificator "y"
    if (secondKey = "Y")
        return modificator "Y"
    if (secondKey = "u")
        return modificator "u"
    if (secondKey = "U")
        return modificator "U"
    if (secondKey = "i")
        return modificator "i"
    if (secondKey = "I")
        return modificator "I"
    if (secondKey = "o")
        return modificator "o"
    if (secondKey = "O")
        return modificator "O"
    if (secondKey = "p")
        return modificator "p"
    if (secondKey = "P")
        return modificator "P"

    if (secondKey = "a")
        return modificator "a"
    if (secondKey = "A")
        return modificator "A"
    if (secondKey = "s")
        return modificator "s"
    if (secondKey = "S")
        return modificator "S"
    if (secondKey = "d")
        return modificator "d"
    if (secondKey = "D")
        return modificator "D"
    if (secondKey = "f")
        return modificator "f"
    if (secondKey = "F")
        return modificator "F"
    if (secondKey = "g")
        return modificator "g"
    if (secondKey = "G")
        return modificator "G"
    if (secondKey = "h")
        return modificator "h"
    if (secondKey = "H")
        return modificator "H"
    if (secondKey = "j")
        return modificator "j"
    if (secondKey = "J")
        return modificator "J"
    if (secondKey = "k")
        return modificator "k"
    if (secondKey = "K")
        return modificator "K"
    if (secondKey = "l")
        return modificator "l"
    if (secondKey = "L")
        return modificator "L"
    if (secondKey = ";")
        return modificator ";"
    if (secondKey = ":")
        return modificator ":"

    if (secondKey = "z")
        return modificator "z"
    if (secondKey = "Z")
        return modificator "Z"
    if (secondKey = "x")
        return modificator "x"
    if (secondKey = "X")
        return modificator "X"
    if (secondKey = "c")
        return modificator "c"
    if (secondKey = "C")
        return modificator "C"
    if (secondKey = "v")
        return modificator "v"
    if (secondKey = "V")
        return modificator "V"
    if (secondKey = "b")
        return modificator "b"
    if (secondKey = "B")
        return modificator "B"
    if (secondKey = "n")
        return modificator "n"
    if (secondKey = "N")
        return modificator "N"
    if (secondKey = "m")
        return modificator "m"
    if (secondKey = "M")
        return modificator "M"
    if (secondKey = ",")
        return modificator ","
    if (secondKey = "<")
        return modificator "<"
    if (secondKey = ".")
        return modificator "."
    if (secondKey = ">")
        return modificator ">"
    if (secondKey = "/")
        return modificator "/"
    if (secondKey = "?")
        return modificator "?"
    if (secondKey = "{[}")
        return modificator "{[}"
    if (secondKey = "'")
        return modificator "'"

    if (secondKey = "{Enter}")
        return modificator "{Enter}"
    if (secondKey = "{Delete}")
        return modificator "{Delete}"
        
    if (secondKey = " ")
        return "^" firstKey
        
    return ""
}

WindowsMapping(firstKey, secondKey)
{
    return ModificatorMapping(firstKey, secondKey, "#")
}

WindowsShiftMapping(firstKey, secondKey)
{
    return ModificatorMapping(firstKey, secondKey, "#+")
}

ControlMapping(firstKey, secondKey)
{
    if (secondKey = "{Tab}")
        return "!{Click}"
    if (secondKey = "{Delete}")
        return "^{Click}"

    return ModificatorMapping(firstKey, secondKey, "^")
}

ControlShiftMapping(firstKey, secondKey)
{
    return ModificatorMapping(firstKey, secondKey, "^+")
}

DefaultMapping(firstKey, secondKey)
{
    if (secondKey = " ")
        return "^" firstKey
        
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
                (NOT repeatedHandling OR A_TickCount - startTime < 25))
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