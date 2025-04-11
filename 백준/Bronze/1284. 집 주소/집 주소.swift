import Foundation

while let line = readLine(), line != "0" {
    var width = 0

    for digit in line {
        switch digit {
        case "1":
            width += 2
        case "0":
            width += 4
        default:
            width += 3
        }
    }

    width += line.count - 1  // 숫자 사이 공백
    width += 2               // 양쪽 여백

    print(width)
}