let n = Int(readLine()!)!

for i in 0..<2*n - 1 {
    if i < n {
        for j in 0..<2*n - 1 {
            if j < i {
                print(" ", terminator: "")
            } else if j > 2*(n - 1) - i {
                continue
            } else {
                print("*", terminator: "")
            }
        }
        print()
    } else {
        for j in 0..<2*n - 1 {
            if j > i {
                continue
            } else if j < 2*(n - 1) - i {
                print(" ", terminator: "")
            } else {
                print("*", terminator: "")
            }
        }
        print()
    }
}