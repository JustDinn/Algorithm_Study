var input = readLine()!.split(separator: " ").map { Int($0)! }
input.sort()
input.forEach { print($0, terminator: " ") }