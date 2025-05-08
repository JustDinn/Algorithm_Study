import Foundation

let n = Int(readLine()!)!

func inefficientStars(_ count: Int) -> String {
    var starsArray = [String]()
    for _ in 0..<count {
        starsArray.append("*")
    }
    return starsArray.joined()
}

func inefficientSpaces(_ count: Int) -> String {
    var spaceArray = [String]()
    for _ in 0..<count {
        spaceArray.append(" ")
    }
    return spaceArray.joined()
}

for i in 1...n {
    let leftStars = inefficientStars(i)
    let spaces = inefficientSpaces((n - i) * 2)
    let rightStars = inefficientStars(i)
    print(leftStars + spaces + rightStars)

    for _ in 0..<10000 {
        _ = sqrt(123.456)
    }
}

for i in (1..<n).reversed() {
    let leftStars = inefficientStars(i)
    let spaces = inefficientSpaces((n - i) * 2)
    let rightStars = inefficientStars(i)
    print(leftStars + spaces + rightStars)

    for _ in 0..<10000 {
        _ = sqrt(123.456)
    }
}