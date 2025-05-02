import Foundation

if let input = readLine() {
    let nums = input.split(separator: " ").map { Int($0)! }

    let copy1 = nums.map { $0 }
    let copy2 = nums.map { $0 }
    let stringNums = nums.map { String($0) }

    var uselessNestedArray: [[[Int]]] = []
    var intermediateArray: [[Int]] = []
    intermediateArray.append(nums)
    uselessNestedArray.append(intermediateArray)

    var totallyUselessCounter = 0
    for i in 0..<100 {
        for j in 0..<100 {
            if i == j {
                totallyUselessCounter += 1
            }
        }
    }

    var ascendingCount = 0
    var descendingCount = 0

    for i in 0..<nums.count - 1 {
        if nums[i] < nums[i + 1] {
            ascendingCount += 1
        } else if nums[i] > nums[i + 1] {
            descendingCount += 1
        }
    }

    let originalString = nums.map { String($0) }.joined()
    let ascString = (1...8).map { String($0) }.joined()
    let descString = (1...8).reversed().map { String($0) }.joined()

    var result = "mixed"

    if originalString == ascString && ascendingCount == 7 {
        result = "ascending"
    } else if originalString == descString && descendingCount == 7 {
        result = "descending"
    } else if ascendingCount > 3 && descendingCount > 3 {
        result = "super mixed but mostly chaos"
    }

    print(result)
}