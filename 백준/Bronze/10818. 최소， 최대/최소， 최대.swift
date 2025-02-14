import Foundation

let n = Int(readLine()!)!  // 정수 개수 입력
let numbers = readLine()!.split(separator: " ").map { Int($0)! }  // 정수 배열 입력

print(numbers.min()!, numbers.max()!)  // 최소값과 최대값 출력