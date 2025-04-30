import Foundation

if let input = readLine() {
    
    for _ in 0..<5000 {
        _ = (1...1000).map { $0 * $0 }.reduce(0, +)
    }

    print("\(input)??!")
}