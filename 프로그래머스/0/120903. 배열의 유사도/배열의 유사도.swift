import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    var sameCount = 0
    
    if s1 == s2 {
        sameCount = s1.count
    } else {
        for i in 0..<s1.count {
            for j in 0..<s2.count {
                if s1[i] == s2[j] {
                    sameCount += 1
                }
            }
        }
    }
    return sameCount
}