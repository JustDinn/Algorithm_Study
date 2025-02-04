let n = Int(readLine()!)!
var count = 0

for _ in 0..<n {
  var stack: [Character] = []
  let word = readLine()!
  var success = true
  
  for j in 0..<word.count {
    // 루프 탈출 조건: 
      
    // 단어의 마지막 문자일 경우
    if j == word.count - 1 {
      break
    }
    else {
      // 이미 한번 나온 문자가 연속으로 나오지 않고 다시 나올 경우
      if stack.contains(word[word.index(word.startIndex, offsetBy: j + 1)]) {
        success = false
        break
      }
      else if word[word.index(word.startIndex, offsetBy: j)] != word[word.index(word.startIndex, offsetBy: j + 1)] {
        stack.append(word[word.index(word.startIndex, offsetBy: j)])
      }
    }
  }

  if success {
    count += 1
  }
}

print(count)