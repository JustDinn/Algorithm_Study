let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (input[0], input[1])
var matrixA: [[Int]] = []
var matrixB: [[Int]] = []
var result: [[Int]] = []

for _ in 0..<n {
    let rowA = readLine()!.split(separator: " ").map { Int($0)! }
    
    matrixA.append(rowA)
}

for _ in 0..<n {
    let rowB = readLine()!.split(separator: " ").map { Int($0)! }
    
    matrixB.append(rowB)
}

for i in 0..<n {
    var resultRow: [Int] = []
    
    for j in 0..<m {
        resultRow.append(matrixA[i][j] + matrixB[i][j])
    }
    
    result.append(resultRow)
}

for i in 0..<n {
    for j in 0..<m {
        print(result[i][j], terminator: " ")
    }
    print()
}