import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    // 세 숫자 모두 다름
    if a != b && b != c && a != c {
        return a + b + c
    }
    // 셋 다 같음
    else if a == b && b == c && a == c {
        let first = a*a*a + b*b*b + c*c*c
        let second = first * (a*a + b*b + c*c)
        return second * (a + b + c)
    }
    // 하나만 다름
    else {
        let first = a*a + b*b + c*c
        return (a + b + c) * first
    }
}