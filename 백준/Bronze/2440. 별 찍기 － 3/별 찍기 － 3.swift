let n = Int(readLine()!)!

for i in 0..<n {
    for _ in 0..<n-i {
        print("*", terminator: "")
    }
    print()
}