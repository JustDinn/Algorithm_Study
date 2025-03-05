let word = readLine()!
var isPalindrome = false

if word.count == 1 {
    isPalindrome = true
} else {
    for i in 0..<word.count / 2 {
        if word[word.index(word.startIndex, offsetBy: i)] != word[word.index(word.startIndex, offsetBy: word.count - i - 1)] {
            isPalindrome = false
            break
        } else {
            isPalindrome = true
        }
    }
}
isPalindrome ? print(1) : print(0)