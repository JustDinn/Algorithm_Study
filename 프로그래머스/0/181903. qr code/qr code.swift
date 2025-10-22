import Foundation

func solution(_ q: Int, _ r: Int, _ code: String) -> String {
    var result = ""
    let arrCode = Array(code)
    
    for i in 0..<code.count {
        if r == i % q {
            result += String(arrCode[i])
        }
    }
    
    return result
}