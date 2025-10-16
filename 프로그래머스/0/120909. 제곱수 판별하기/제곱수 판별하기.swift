import Foundation

func solution(_ n: Int) -> Int {
    let number = floor(sqrt(Double(n)))
    
    if pow(number, 2) == Double(n) {
        return 1
    } else {
        return 2
    }
}