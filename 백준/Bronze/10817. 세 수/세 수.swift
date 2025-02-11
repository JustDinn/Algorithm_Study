var input = readLine()!.split(separator: " ").map { Int($0)! }
input.sort()
print(input[1])