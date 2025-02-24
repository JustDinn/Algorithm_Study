import Foundation

var students = [Int](repeating: 0, count: 30)

for _ in 0..<28 {
    let n = Int(readLine()!)!
        
    students[n - 1] += 1
}

for i in 0..<students.count {
    if students[i] == 0 {
        print(i + 1)
    }
}