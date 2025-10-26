import Foundation

func solution(_ code: String) -> String {
    var mode = 0
    var ret = ""
    
    for (index, char) in code.enumerated() {
        if mode == 0 {
            if char != "1" && index % 2 == 0 {
                ret.append(char)
            } else if char == "1" {
                mode = 1
            }
        } else {
            if char != "1" && index % 2 != 0 {
                ret.append(char)
            } else if char == "1" {
                mode = 0
            }
        }
    }
    
    return ret.isEmpty ? "EMPTY" : ret
}