import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    let sortedEmergency = Array(emergency.sorted().reversed())
    var rank: [Int: Int] = [:]
    var result: [Int] = []
    
    for i in 0..<emergency.count {
        rank[sortedEmergency[i]] = i + 1
    }
    
    emergency.forEach {
        if let number = rank[$0] {
            result.append(number)
        }
    }
    
    return result
}