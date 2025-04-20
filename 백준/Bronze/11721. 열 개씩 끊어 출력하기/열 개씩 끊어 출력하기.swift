var count = 1
let input = readLine()!

for char in input {
    if count == 10 {
        print(char)
        count = 1
    } else {
        print(char, terminator: "")
        count += 1
    }
}