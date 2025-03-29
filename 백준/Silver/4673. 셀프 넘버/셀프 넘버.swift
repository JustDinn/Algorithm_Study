import Foundation

var isGenerated = [Bool](repeating: false, count: 10001)

func d(_ n: Int) -> Int {
    var sum = n
    var temp = n
    while temp > 0 {
        sum += temp % 10
        temp /= 10
    }
    return sum
}

for i in 1..<10000 {
    let generator = d(i)
    if generator <= 10000 {
        isGenerated[generator] = true
    }
}

for i in 1..<10000 {
    if !isGenerated[i] {
        print(i)
    }
}