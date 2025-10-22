import Foundation

func solution(_ my_string: String, _ queries: [[Int]]) -> String {
    var result = Array(my_string)
    
    for query in queries {
        var first = query[0]
        var second = query[1]
        
        while first < second {
            result.swapAt(first, second)
            first += 1
            second -= 1
        }
    }
    return String(result)
}