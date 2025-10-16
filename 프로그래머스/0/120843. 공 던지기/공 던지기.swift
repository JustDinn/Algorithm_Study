import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    return (2 * (k - 1)) % numbers.count + 1
}