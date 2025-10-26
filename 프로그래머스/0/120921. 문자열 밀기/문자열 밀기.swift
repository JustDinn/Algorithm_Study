import Foundation

func solution(_ A: String, _ B: String) -> Int {
    var result = 0
    var mutatedA = A
    
    for _ in 0..<mutatedA.count {
        if mutatedA == B {
            return result
        } else {
            let lastChar = Array(mutatedA)[mutatedA.count - 1]
            
            mutatedA = String(lastChar) + mutatedA
            var arrMutatedA = Array(mutatedA)
            arrMutatedA.remove(at: arrMutatedA.count - 1)
            mutatedA = String(arrMutatedA)
            
            result += 1
        }
    }
    
    if mutatedA != B {
        result = -1
    }
    
    return result
}