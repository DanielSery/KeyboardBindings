#Requires AutoHotkey v2.0

global firstKey := ""
global firstBaseKey := ""
global secondKey := ""
global secondBaseKey := ""
global queue := []

QMapping(firstKey, secondKey)
{
    if (secondKey = "w")
        return "y"
    if (secondKey = "s")
        return "u"
    if (secondKey = "x")
        return "i"
    if (secondKey = "e")
        return "o"
    if (secondKey = "d")
        return "p"
    if (secondKey = "c")
        return "h"
    if (secondKey = "r")
        return "j"
    if (secondKey = "f")
        return "k"
    if (secondKey = "v")
        return "l"
    if (secondKey = "t")
        return ";"
    if (secondKey = "g")
        return "n"
    if (secondKey = "b")
        return "m"
    if (secondKey = " ")
        return "^" firstKey
    return ""
}

$q::MapKey("q", "q", DefaultMapping)
$+q::MapKey("q", "Q", DefaultMapping)

WMapping(firstKey, secondKey)
{
    if (secondKey = "q")
        return ","
    if (secondKey = "a")
        return "."
    if (secondKey = "z")
        return "/"
    if (secondKey = "e")
        return "+y"
    if (secondKey = "d")
        return "+u"
    if (secondKey = "c")
        return "+i"
    if (secondKey = "r")
        return "+o"
    if (secondKey = "f")
        return "+p"
    if (secondKey = "v")
        return "+h"
    if (secondKey = "t")
        return "+j"
    if (secondKey = "g")
        return "+k"
    if (secondKey = "b")
        return "+l"
    if (secondKey = " ")
        return "^" firstKey
    return ""
}


$w::MapKey("w", "w", WMapping)
$+w::MapKey("w", "W", DefaultMapping)

EMapping(firstKey, secondKey)
{
    if (secondKey = "q")
        return "+;"
    if (secondKey = "a")
        return "+n"
    if (secondKey = "z")
        return "+m"
    if (secondKey = "w")
        return "+,"
    if (secondKey = "s")
        return "+."
    if (secondKey = "x")
        return "+/"
    if (secondKey = "r")
        return "^y"
    if (secondKey = "f")
        return "^u"
    if (secondKey = "v")
        return "^i"
    if (secondKey = "t")
        return "^o"
    if (secondKey = "g")
        return "^p"
    if (secondKey = "b")
        return "^j"
    if (secondKey = " ")
        return "^" firstKey
    return ""
}


$e::MapKey("e", "e", EMapping)
$+e::MapKey("e", "E", DefaultMapping)

RMapping(firstKey, secondKey)
{
    if (secondKey = "q")
        return "^k"
    if (secondKey = "a")
        return "^l"
    if (secondKey = "z")
        return "^;"
    if (secondKey = "w")
        return "^m"
    if (secondKey = "s")
        return "^,"
    if (secondKey = "x")
        return "^."
    if (secondKey = "e")
        return "^/"
    if (secondKey = "d")
        return "!y"
    if (secondKey = "c")
        return "!u"
    if (secondKey = " ")
        return "^" firstKey
    return ""
}


$r::MapKey("r", "r", RMapping)
$+r::MapKey("r", "R", DefaultMapping)

TMapping(firstKey, secondKey)
{
    if (secondKey = "q")
        return "!i"
    if (secondKey = "a")
        return "!o"
    if (secondKey = "z")
        return "!p"
    if (secondKey = "w")
        return "!h"
    if (secondKey = "s")
        return "!j"
    if (secondKey = "x")
        return "!k"
    if (secondKey = "e")
        return "!l"
    if (secondKey = "d")
        return "!;"
    if (secondKey = "c")
        return "!n"
    if (secondKey = " ")
        return "^" firstKey
    return ""
}


$t::MapKey("t", "t", DefaultMapping)
$+t::MapKey("t", "T", DefaultMapping)

AMapping(firstKey, secondKey)
{
    if (secondKey = "w")
        return "!m"
    if (secondKey = "s")
        return "!,"
    if (secondKey = "x")
        return "!."
    if (secondKey = "e")
        return "!/"
    if (secondKey = "d")
        return "+^y"
    if (secondKey = "c")
        return "+^u"
    if (secondKey = "r")
        return "+^i"
    if (secondKey = "f")
        return "+^o"
    if (secondKey = "v")
        return "+^p"
    if (secondKey = "t")
        return "+^h"
    if (secondKey = "g")
        return "+^j"
    if (secondKey = "b")
        return "+^k"
    if (secondKey = " ")
        return "^" firstKey
    return ""
}


$a::MapKey("a", "a", AMapping)
$+a::MapKey("a", "A", DefaultMapping)

SMapping(firstKey, secondKey)
{
    if (secondKey = "q")
        return "+^l"
    if (secondKey = "a")
        return "+^;"
    if (secondKey = "z")
        return "+^n"
    if (secondKey = "e")
        return "+^m"
    if (secondKey = "d")
        return "+^,"
    if (secondKey = "c")
        return "+^."
    if (secondKey = "r")
        return "+^/"
    if (secondKey = "f")
        return "+!y"
    if (secondKey = "v")
        return "+!u"
    if (secondKey = "t")
        return "+!i"
    if (secondKey = "g")
        return "+!o"
    if (secondKey = "b")
        return "+!p"
    if (secondKey = " ")
        return "^" firstKey
    return ""
}


$s::MapKey("s", "s", SMapping)
$+s::MapKey("s", "S", DefaultMapping)

DMapping(firstKey, secondKey)
{
    if (secondKey = "q")
        return "+!h"
    if (secondKey = "a")
        return "+!j"
    if (secondKey = "z")
        return "+!k"
    if (secondKey = "w")
        return "+!l"
    if (secondKey = "s")
        return "+!;"
    if (secondKey = "x")
        return "+!n"
    if (secondKey = "r")
        return "+!m"
    if (secondKey = "f")
        return "+!,"
    if (secondKey = "v")
        return "+!."
    if (secondKey = "t")
        return "+!/"
    if (secondKey = "g")
        return "^!y"
    if (secondKey = "b")
        return "^!u"
    if (secondKey = " ")
        return "^" firstKey
    return ""
}


$d::MapKey("d", "d", DMapping)
$+d::MapKey("d", "D", DefaultMapping)

FMapping(firstKey, secondKey)
{
    if (secondKey = "q")
        return "^!i"
    if (secondKey = "a")
        return "^!o"
    if (secondKey = "z")
        return "^!p"
    if (secondKey = "w")
        return "^!h"
    if (secondKey = "s")
        return "^!j"
    if (secondKey = "x")
        return "^!k"
    if (secondKey = "e")
        return "^!l"
    if (secondKey = "d")
        return "^!;"
    if (secondKey = "c")
        return "^!n"
    if (secondKey = " ")
        return "^" firstKey
    return ""
}


$f::MapKey("f", "f", FMapping)
$+f::MapKey("f", "F", DefaultMapping)

GMapping(firstKey, secondKey)
{
    if (secondKey = "q")
        return "^!m"
    if (secondKey = "a")
        return "^!,"
    if (secondKey = "z")
        return "^!."
    if (secondKey = "w")
        return "^!/"
    if (secondKey = "s")
        return "^!+y"
    if (secondKey = "x")
        return "^!+u"
    if (secondKey = "e")
        return "^!+i"
    if (secondKey = "d")
        return "^!+o"
    if (secondKey = "c")
        return "^!+p"
    if (secondKey = " ")
        return "^" firstKey
    return ""
}


$g::MapKey("g", "g", GMapping)
$+g::MapKey("g", "G", DefaultMapping)

ZMapping(firstKey, secondKey)
{
    if (secondKey = "w")
        return "^!+h"
    if (secondKey = "s")
        return "^!+j"
    if (secondKey = "x")
        return "^!+k"
    if (secondKey = "e")
        return "^!+l"
    if (secondKey = "d")
        return "^!+;"
    if (secondKey = "c")
        return "^!+n"
    if (secondKey = "r")
        return "^!+m"
    if (secondKey = "f")
        return "^!+,"
    if (secondKey = "v")
        return "^!+."
    if (secondKey = "t")
        return "^!+/"
    if (secondKey = "g")
        return "1"
    if (secondKey = "b")
        return "2"
    if (secondKey = " ")
        return "^" firstKey
    return ""
}


$z::MapKey("z", "z", DefaultMapping)
$+z::MapKey("z", "Z", DefaultMapping)

XMapping(firstKey, secondKey)
{
    if (secondKey = "q")
        return "3"
    if (secondKey = "a")
        return "4"
    if (secondKey = "z")
        return "5"
    if (secondKey = "e")
        return "6"
    if (secondKey = "d")
        return "7"
    if (secondKey = "c")
        return "8"
    if (secondKey = "r")
        return "9"
    if (secondKey = "f")
        return "0"
    if (secondKey = "v")
        return "+1"
    if (secondKey = "t")
        return "+2"
    if (secondKey = "g")
        return "+3"
    if (secondKey = "b")
        return "+4"
    if (secondKey = " ")
        return "" firstKey
    return ""
}


$x::MapKey("x", "x", DefaultMapping)
$+x::MapKey("x", "X", DefaultMapping)

CMapping(firstKey, secondKey)
{
    if (secondKey = "q")
        return "+5"
    if (secondKey = "a")
        return "+6"
    if (secondKey = "z")
        return "+7"
    if (secondKey = "w")
        return "+8"
    if (secondKey = "s")
        return "+9"
    if (secondKey = "x")
        return "^1"
    if (secondKey = "r")
        return "^2"
    if (secondKey = "f")
        return "^3"
    if (secondKey = "v")
        return "^4"
    if (secondKey = "t")
        return "^5"
    if (secondKey = "g")
        return "^6"
    if (secondKey = "b")
        return "^7"
    if (secondKey = " ")
        return "^" firstKey
    return ""
}


$c::MapKey("c", "c", DefaultMapping)
$+c::MapKey("c", "C", DefaultMapping)

VMapping(firstKey, secondKey)
{
    if (secondKey = "q")
        return "^8"
    if (secondKey = "a")
        return "^9"
    if (secondKey = "z")
        return "^0"
    if (secondKey = "w")
        return "!1"
    if (secondKey = "s")
        return "!2"
    if (secondKey = "x")
        return "!3"
    if (secondKey = "e")
        return "!4"
    if (secondKey = "d")
        return "!5"
    if (secondKey = "c")
        return "!6"
    if (secondKey = " ")
        return "^" firstKey
    return ""
}


$v::MapKey("v", "v", VMapping)
$+v::MapKey("v", "V", DefaultMapping)

BMapping(firstKey, secondKey)
{
    if (secondKey = "q")
        return "!7"
    if (secondKey = "a")
        return "!8"
    if (secondKey = "z")
        return "!9"
    if (secondKey = "w")
        return "!0"
    if (secondKey = "s")
        return "+^1"
    if (secondKey = "x")
        return "+^2"
    if (secondKey = "e")
        return "+^3"
    if (secondKey = "d")
        return "+^4"
    if (secondKey = "c")
        return "+^5"
    if (secondKey = " ")
        return "^" firstKey
    return ""
}

$b::MapKey("b", "b", BMapping)
$+b::MapKey("b", "B", DefaultMapping)

SpaceMapping(firstKey, secondKey)
{
    if (secondKey = "q")
        return "+^6"
    if (secondKey = "a")
        return "+^7"
    if (secondKey = "z")
        return "+^8"
    if (secondKey = "w")
        return "+^9"
    if (secondKey = "s")
        return "+^0"
    if (secondKey = "x")
        return "+!1"
    if (secondKey = "e")
        return "+!2"
    if (secondKey = "d")
        return "+!3"
    if (secondKey = "c")
        return "+!4"
    if (secondKey = "r")
        return "+!5"
    if (secondKey = "f")
        return "+!6"
    if (secondKey = "v")
        return "+!7"
    if (secondKey = "t") 
        return "!{Tab}"
    if (secondKey = "g")
        return "+!9"
    if (secondKey = "b")
        return "+!0"
    
    return ""
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
                (combinationHandling OR NOT repeatedHandling OR A_TickCount - startTime < 100))
            {
                Sleep(10)

                if (A_TickCount - startTime > 700)
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
                if (queue.Length > 0 AND combinationHandling)
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
            else if (queue.Length > 0 AND combinationHandling)
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
            else if (specialResult != "")
            {
                Send specialResult
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
    finally
    {
        firstKey := ""
        firstBaseKey := ""
        secondKey := ""
        secondBaseKey := ""
    }
}