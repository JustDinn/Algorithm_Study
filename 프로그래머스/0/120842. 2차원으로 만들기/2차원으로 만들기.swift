import Foundation

func solution(_ num_list: [Int], _ n: Int) -> [[Int]] {
    var result: [[Int]] = []
    var arr: [Int] = []
    var count = n - 1
    
    for (index, num) in num_list.enumerated() {
        arr.append(num)
        
        if index == count {
            count += n
            result.append(arr)
            arr.removeAll()
        }
    }
    
    return result
}