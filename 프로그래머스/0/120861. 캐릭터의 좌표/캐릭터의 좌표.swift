import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var result = [0, 0]
    let width = board[0] / 2
    let height = board[1] / 2
    
    for command in keyinput {
        if command == "left" {
            if abs(result[0] - 1) <= abs(width) {
                result[0] -= 1
            }
        } else if command == "right" {
            if abs(result[0] + 1) <= abs(width) {
                result[0] += 1
            }
        } else if command == "up" {
            if abs(result[1] + 1) <= abs(height) {
                result[1] += 1
            }
        } else if command == "down" {
            if abs(result[1] - 1) <= abs(height) {
                result[1] -= 1
            }
        }
    }
    
    return result
}