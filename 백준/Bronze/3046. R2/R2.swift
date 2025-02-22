let input = readLine()!.split(separator: " ").map { Int($0)! }
let (a, avg) = (input[0], input[1])

print(2 * avg - a)