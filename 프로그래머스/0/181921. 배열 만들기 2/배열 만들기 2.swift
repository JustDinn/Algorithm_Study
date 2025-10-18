import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var result: [Int] = []
    
    for number in l...r {
        var flag = false // flag == false: 0과 5로만 구성, flag == true: 다른 숫자 포함
        
        for char in String(number) {
            if char != "0" && char != "5" { // 다른 숫자가 포함됨
                flag = true
                break
            }
        }
        if flag == false {
            // 0 또는 5로만 구성됨
            result.append(number)
        }
    }
    return result.isEmpty ? [-1] : result
}