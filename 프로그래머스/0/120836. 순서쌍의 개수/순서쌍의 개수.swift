import Foundation

func solution(_ n: Int) -> Int {
    var count = 0
    var first = 0
    var second = 1
    
    for i in 1...n {
        if first > second {
            return (count - 1) * 2
        } else if first == second {
            return count * 2 - 1
        } else {
            if n % i == 0 {
                count += 1
                first = i
                second = n / i
            }
        }
    }
    
    return count
}