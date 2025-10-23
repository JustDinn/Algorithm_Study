import Foundation

func solution(_ num: Int, _ total: Int) -> [Int] {
    var result: [Int] = []
    var start = 1
    var sum = -1
    
    while true {
        for i in start..<start+num {
            result.append(i)
        }
        sum = result.reduce(0, +)
        
        if sum == total {
            return result
        } else if sum > total {
            start -= 1
            result.removeAll()
        } else {
            start += 1
            result.removeAll()
        }
    }
}