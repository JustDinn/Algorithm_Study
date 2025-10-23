import Foundation

func solution(_ quizList: [String]) -> [String] {
    var result: [String] = []
    
    for quiz in quizList {
        let sentence = quiz.split(separator: " ")

        let first = Int(sentence[0])!
        let second = Int(sentence[2])!
        let operand = sentence[1]
        var tempCorrect: Int
        
        if operand == "+" {
            tempCorrect = first + second
        } else {
            tempCorrect = first - second
        }
        
        if tempCorrect == Int(sentence[4])! {
            result.append("O")
        } else {
            result.append("X")
        }
    }
    
    return result
}