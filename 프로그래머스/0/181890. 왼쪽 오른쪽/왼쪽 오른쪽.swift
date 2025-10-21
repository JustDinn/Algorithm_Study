import Foundation

func solution(_ str_list:[String]) -> [String] {
    var result: [String] = []
    
    for (index, value) in str_list.enumerated() {
        if value == "l" {
            return result
        } else if value == "r" {
            result = []
            for i in index+1..<str_list.count {
                result.append(str_list[i])
            }
            return result
        } else if index == str_list.count - 1 {
            return []
        } else {
            result.append(value)
        }
    }
    return result
}