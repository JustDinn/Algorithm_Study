import Foundation

// 숫자 입력받기
guard let nInput = readLine(), let n = Int(nInput) else { exit(0) }
var dict: [Int: Int] = [:]
var count = 0

// 소 관찰 횟수만큼 반복
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    // 딕셔너리에 존재하고 값이 같지 않다면 count + 1
    if dict.keys.contains(input[0]) && dict[input[0]] != input[1] {
        count += 1
        dict[input[0]] = input[1]
    }
    // 딕셔너리에 존재하지 않는다면 딕셔너리에 추가
    else {
        dict[input[0]] = input[1]
    }
}

print(count)