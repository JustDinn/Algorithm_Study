let n = Int(readLine()!)!

for index in 1...n {
  let numbers = readLine()!.split(separator: " ").map { Int($0)! }

  print("Case #\(index): \(numbers[0] + numbers[1])")
}