import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var shortestNumber = array[0]
    var shortestDistance = abs(n - array[0])
    
    for number in array {
        let distance = abs(n - number)
        
        if number == n {
            shortestNumber = n
            break
        } else if distance < shortestDistance {
            shortestNumber = number
            shortestDistance = distance
        } else if distance == shortestDistance {
            shortestNumber = number < shortestNumber ? number : shortestNumber
        }
    }
    
    return shortestNumber
}