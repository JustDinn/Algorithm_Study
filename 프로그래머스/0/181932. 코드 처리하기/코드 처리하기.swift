import Foundation

func solution(_ code: String) -> String {
    var mode = 0
    var ret = ""
    
    for (index, char) in code.enumerated() {
        if mode == 0 {
            if char == "1" {
                mode = 1
            } else {
                if index % 2 == 0 {
                    ret += String(char)
                }
            }
        } else {
            if char == "1" {
                mode = 0
            } else {
                if index % 2 != 0 {
                    ret += String(char)
                }
            }
        }
    }
    return ret.isEmpty ? "EMPTY" : ret
}