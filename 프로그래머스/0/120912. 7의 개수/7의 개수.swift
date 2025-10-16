import Foundation

func solution(_ array:[Int]) -> Int {
    var count = 0
    
    array.forEach {
        String($0).forEach {
            if String($0).contains("7") {
                count += 1
            }
        }
    }
    
    return count
}