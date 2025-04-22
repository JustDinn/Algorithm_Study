import Foundation

var dict: [Character: Int] = [
    "0": 0,
    "1": 0,
    "2": 0,
    "3": 0,
    "4": 0,
    "5": 0,
    "6": 0,
    "7": 0,
    "8": 0,
    "9": 0
]

let number = readLine()!

number.forEach {
    switch $0 {
    case "6", "9":
        if let sixCount = dict["6"], let nineCount = dict["9"] {
            if sixCount > nineCount {
                dict.updateValue(nineCount + 1, forKey: "9")
            } else {
                dict.updateValue(sixCount + 1, forKey: "6")
            }
        }
        
    default:
        if let value = dict[$0] {
            dict.updateValue(value + 1, forKey: $0)
        }
    }
}

if let maxCount = dict.values.max() {
    print(maxCount)
}