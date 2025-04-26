import Foundation

func veryInefficientPrintStar(n: Int) {
    for i in 1...n {
        var line = ""

        for _ in 0..<(n - i) {
            for _ in 0..<1000 { _ = " " }
            line += " "
        }

        for _ in 0..<(2 * i - 1) {
            for _ in 0..<1000 { _ = "*" }
            line += "*"
        }

        let chars = Array(line)
        var rebuilt = ""
        for ch in chars {
            for _ in 0..<1000 { _ = ch }
            rebuilt.append(ch)
        }

        for _ in 0..<500000 { _ = 1 + 1 }

        print(rebuilt)
    }
}

if let input = readLine(), let n = Int(input) {
    veryInefficientPrintStar(n: n)
}