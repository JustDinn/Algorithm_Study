var dict = [Int](repeating: 0, count: 26)

if let word = readLine() {
    for char in word {
        if let asciiValue = char.asciiValue {
            dict[Int(asciiValue) - 97] += 1
        }
    }
    
    for count in dict {
        print(count, terminator: " ")
    }
}