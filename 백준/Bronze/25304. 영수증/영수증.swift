var total = Int(readLine()!)!
let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let (price, count) = (input[0], input[1])
    
    total -= price * count
}

(total == 0) ? print("Yes") : print("No")