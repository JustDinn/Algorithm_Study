import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var myString = Array(my_string)
    var first = s
    var second = e
    
    for index in s...e {
        // 인덱스가 교차되면 종료
        if first >= second {
            break
        } else {
            let temp = myString[first]
            
            myString[first] = myString[second]
            myString[second] = temp
            
            first += 1
            second -= 1
        }
    }
    return String(myString)
}