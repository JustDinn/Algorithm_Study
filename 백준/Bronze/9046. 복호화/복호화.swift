import Foundation

// 입력받을 문장 개수
guard let nInput = readLine(), let n = Int(nInput) else { exit(0) }

// 입력받은 문장 개수만큼 반복
for _ in 0..<n {
    // 문장 입력 받은 후 공백 제거
    guard let sentence = readLine() else { exit(0) }
    let trimSentence = sentence.replacingOccurrences(of: " ", with: "")
    
    var dict: [Character: Int] = [:]
    var maxCharCount = 0
    var maxChar: Character = " "
    var isMultipleMax = false
    
    // 공백제거된 문장의 문자가 딕셔너리에 존재하면 +1, 없으면 0으로 초기화
    for char in trimSentence {
        dict[char, default: 0] += 1
    }
    
    // 딕셔너리 순회
    for (char, charCount) in dict {
        // 최빈문자보다 현재 순회중인 문자의 count가 더 많다면, maxCharCount값 교체
        if charCount > maxCharCount {
            isMultipleMax = false
            maxCharCount = charCount
            maxChar = char
        }
        // 최빈문자가 동률일 경우
        else if charCount == maxCharCount {
            isMultipleMax = true
        }
    }
    
    // 최빈 문자가 여러개라면 "?" 출력, 하나라면 최빈 문자 출력
    isMultipleMax ? print("?") : print(maxChar)
}