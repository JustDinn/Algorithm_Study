import Foundation

if let input = readLine() {
    var index = input.startIndex
    
    while index < input.endIndex {
        let endIndex = input.index(index, offsetBy: 10, limitedBy: input.endIndex) ?? input.endIndex
        print(String(input[index..<endIndex]))
        index = endIndex
    }
}