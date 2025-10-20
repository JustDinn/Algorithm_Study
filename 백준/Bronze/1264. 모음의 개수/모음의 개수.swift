let vowel = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

while true {
    let sentence = readLine()!
    var vowelCount = 0
    
    if sentence == "#" {
        break
    } else {
        for char in sentence {
            if vowel.contains(String(char)) {
                vowelCount += 1
            }
        }
    }
    print(vowelCount)
}