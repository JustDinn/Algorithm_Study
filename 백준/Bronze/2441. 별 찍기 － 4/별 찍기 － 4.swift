let n = Int(readLine()!)!

for i in 0..<n {
    for j in 0..<n {
        if j >= i {
            print("*", terminator: "")
            
        } else {
            print(" ", terminator: "")
        }
    }
    print()
}