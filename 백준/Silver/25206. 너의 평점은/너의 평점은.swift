import Foundation

let gradeTable: [String: Double] = [
    "A+": 4.5,
    "A0": 4.0,
    "B+": 3.5,
    "B0": 3.0,
    "C+": 2.5,
    "C0": 2.0,
    "D+": 1.5,
    "D0": 1.0,
    "F": 0.0
]

var totalScore = 0.0
var totalCredit = 0.0

for _ in 0..<20 {
    let input = readLine()!.split(separator: " ")
    let subject = String(input[0])
    let credit = Double(input[1])!
    let grade = String(input[2])

    if grade == "P" {
        continue
    }

    if let gradePoint = gradeTable[grade] {
        totalScore += credit * gradePoint
        totalCredit += credit
    }
}

let gpa = totalScore / totalCredit
print(String(format: "%.6f", gpa))