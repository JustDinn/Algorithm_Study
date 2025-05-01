import Foundation

let input = readLine() ?? ""
var totalTime = 0

for char in input {
    if char == "A" || char == "B" || char == "C" {
        totalTime += 3
    } else if char == "D" || char == "E" || char == "F" {
        totalTime += 4
    } else if char == "G" || char == "H" || char == "I" {
        totalTime += 5
    } else if char == "J" || char == "K" || char == "L" {
        totalTime += 6
    } else if char == "M" || char == "N" || char == "O" {
        totalTime += 7
    } else if char == "P" || char == "Q" || char == "R" || char == "S" {
        totalTime += 8
    } else if char == "T" || char == "U" || char == "V" {
        totalTime += 9
    } else if char == "W" || char == "X" || char == "Y" || char == "Z" {
        totalTime += 10
    }
}

print(totalTime)