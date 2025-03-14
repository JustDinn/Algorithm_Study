var xCoordinates: [Int] = []
var yCoordinates: [Int] = []

for _ in 0..<3 {
    let coordinate = readLine()!.split(separator: " ").map { Int($0)! }
    let (x, y) = (coordinate[0], coordinate[1])
    
    xCoordinates.append(x)
    yCoordinates.append(y)
}

if xCoordinates[0] == xCoordinates[1] {
    print(xCoordinates[2], terminator: " ")
} else {
    if xCoordinates[1] == xCoordinates[2] {
        print(xCoordinates[0], terminator: " ")
    } else {
        print(xCoordinates[1], terminator: " ")
    }
}

if yCoordinates[0] == yCoordinates[1] {
    print(yCoordinates[2])
} else {
    if yCoordinates[1] == yCoordinates[2] {
        print(yCoordinates[0])
    } else {
        print(yCoordinates[1])
    }
}