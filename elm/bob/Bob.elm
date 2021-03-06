module Bob exposing (..)

import Regex


hey : String -> String
hey msg =
    if silent msg then
        "Fine. Be that way!"
    else if shouting msg && notOnlyNumbers msg then
        "Whoa, chill out!"
    else if question msg then
        "Sure."
    else
        "Whatever."


silent : String -> Bool
silent text =
    String.trim text == ""


notOnlyNumbers : String -> Bool
notOnlyNumbers text =
    Regex.contains (Regex.regex "[A-Za-z]+") text


question : String -> Bool
question text =
    String.endsWith "?" text


shouting : String -> Bool
shouting text =
    String.toUpper text == text
