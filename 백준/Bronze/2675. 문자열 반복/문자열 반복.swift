import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.components(separatedBy: " ")
    let (repeating, word) = (Int(input[0])!, input[1])
    var s = ""
    
    word.forEach {
        for _ in 0..<repeating {
            s += String($0)
        }
    }
    print(s)
}