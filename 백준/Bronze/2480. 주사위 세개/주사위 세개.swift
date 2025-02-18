var dict: [Int: Int] = [:]
var dice = readLine()!.split(separator: " ").map { Int($0)! }

dice.sort()
dice.forEach { dict[$0, default: 0] += 1 }

if dict.count == 1 {    // 모두 같은 눈일 경우
    print(10000 + dice[0] * 1000)
} else if dict.count == 2 { // 같은 눈이 2개일 경우
    print(1000 + dice[1] * 100)
} else {    // 모두 다른 눈일 경우
    print(dice[2] * 100)
}