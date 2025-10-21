import Foundation

func solution(_ numbers: String) -> Int64 {
    let number = [
        0: "zero",
        1: "one",
        2: "two",
        3: "three",
        4: "four",
        5: "five",
        6: "six",
        7: "seven",
        8: "eight",
        9: "nine"
    ]
    var result = numbers
    for i in 0..<10 {
        if let num = number[i] {
            result = result.replacingOccurrences(of: num, with: "\(i)")
        }
    }
    if let resultNum: Int64 = Int64(result) {
        return resultNum
    } else {
        return -99
    }
}