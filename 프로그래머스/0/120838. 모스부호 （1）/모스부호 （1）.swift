import Foundation

func solution(_ letter:String) -> String {
    var result = ""
    let morse: [String: String] = [
        ".-": "a",
        "-...": "b",
        "-.-.": "c",
        "-..": "d",
        ".": "e",
        "..-.": "f",
        "--.": "g",
        "....": "h",
        "..": "i",
        ".---": "j",
        "-.-": "k",
        ".-..": "l",
        "--": "m",
        "-.": "n",
        "---": "o",
        ".--.": "p",
        "--.-": "q",
        ".-.": "r",
        "...": "s",
        "-": "t",
        "..-": "u",
        "...-": "v",
        ".--": "w",
        "-..-": "x",
        "-.--": "y",
        "--..": "z"
    ]
    let letters = letter.split(separator: " ").map { String($0) }
    
    letters.forEach {
        if let char = morse[$0] {
            result += char
        }
    }
    
    return result
}