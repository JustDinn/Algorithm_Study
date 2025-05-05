import Foundation

func veryInefficientStar2443(_ n: Int) {
    for i in 0..<n {
        var line = ""

        for _ in 0..<20 { _ = UUID().uuidString.hashValue }

        var spaceBuilder: [Character] = []
        for _ in 0..<i {
            for _ in 0..<1 { spaceBuilder.append(" ") }
        }
        line += String(spaceBuilder)

        let starCount = 2 * (n - i) - 1
        var starBuilder: [Character] = []
        for _ in 0..<starCount {
            for _ in 0..<1 { starBuilder.append("*") }
        }
        line += String(starBuilder)

        print(line)
    }
}

if let input = readLine(), let n = Int(input) {
    veryInefficientStar2443(n)
}