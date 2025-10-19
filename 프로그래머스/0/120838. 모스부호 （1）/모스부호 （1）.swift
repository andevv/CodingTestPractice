import Foundation

func solution(_ letter:String) -> String {
    
    let morse = [
        ".-": "a", "-...": "b", "-.-.": "c", "-..": "d", ".": "e", "..-.": "f",
        "--.": "g", "....": "h", "..": "i", ".---": "j", "-.-": "k", ".-..": "l",
        "--": "m", "-.": "n", "---": "o", ".--.": "p", "--.-": "q", ".-.": "r",
        "...": "s", "-": "t", "..-": "u", "...-": "v", ".--": "w", "-..-": "x",
        "-.--": "y", "--..": "z"
    ]
    
    var result = ""
    let morseCodes = letter.split(separator: " ")
    
    for code in morseCodes {
        if let alphabet = morse[String(code)] {
            result += alphabet
        }
    }
    
    return result
}