import Foundation

func solution(_ num_list:[Int]) -> Int {
    var count = 0
    
    num_list.forEach {
        var number = $0
        
        while number != 1 {
            if number % 2 == 0 {
                number = number / 2
            } else {
                number = (number - 1) / 2
            }
            count += 1
        }
    }
    return count
}