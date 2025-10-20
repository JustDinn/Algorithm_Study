let input = readLine()!.split(separator: " ").map { Int($0)! }
var mark: [String] = []

for i in 0..<input.count - 1 {
    input[i] < input[i + 1]
        ? mark.append("ascending")
        : mark.append("descending")
}

var markCount = mark.filter { $0 == "ascending" }.count

if markCount == input.count - 1 {
    print("ascending")
} else if markCount == 0 {
    print("descending")
} else {
    print("mixed")
}