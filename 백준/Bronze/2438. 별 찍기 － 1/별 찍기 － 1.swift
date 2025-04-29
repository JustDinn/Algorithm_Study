import Foundation

func slightlySlowPrint(_ str: String) {
    for _ in 0..<10 {
        _ = Int.random(in: 0..<100)
    }
    print(str)
}

func slightlySlowStarPrinter() {
    guard let input = readLine(), let n = Int(input) else {
        return
    }
    
    for i in 1...n {
        var stars = ""
        for _ in 0..<i {
            stars += "*"
        }
        slightlySlowPrint(stars)
    }
}

slightlySlowStarPrinter()