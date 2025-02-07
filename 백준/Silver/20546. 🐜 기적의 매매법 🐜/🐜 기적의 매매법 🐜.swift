import Foundation

guard let moneyInput = readLine(), let money = Int(moneyInput) else { exit(0) }
guard let stockPricesInput = readLine() else { exit(0) }
let stockPrices = stockPricesInput.components(separatedBy: " ").map { Int($0)! }

// 준현 초기 자금
var bnpStock = 0
var bnpMoney = money

// 성민 초기 자금
var timingStock = 0
var timingMoney = money

// 3일 연속 상한가, 하한가 판별기
var is3DayUp = 0
var is3DayDown = 0

// 14일 반복
for i in 0..<14 {
    // 준현 BNP 전략
    bnpStock += bnpMoney / stockPrices[i]
    bnpMoney = bnpMoney % stockPrices[i]
    
    // 성민 TIMING 전략
    if i == 0 {
        // 첫째날은 비교할 대조군이 없으므로 넘어감
        continue
    } else {
        // 전날보다 주가가 올랐다면
        if stockPrices[i - 1] < stockPrices[i] {
            // 3일 연속 상한가 조건 +1
            is3DayUp += 1
            is3DayDown = 0
        }
        // 전날보다 주가가 내렸다면
        else if stockPrices[i - 1] > stockPrices[i] {
            // 3일 연속 하한가 조건 +1
            is3DayDown += 1
            is3DayUp = 0
        }
        // 전날과 주가가 같다면
        else {
            is3DayUp = 0
            is3DayDown = 0
        }
        
        // 3일 연속 주가가 상승했다면
        if is3DayUp >= 3 {
            // 전량 매도
            timingMoney += stockPrices[i] * timingStock
            timingStock = 0
        }
        // 3일 연속 주가가 하락했다면
        else if is3DayDown >= 3 {
            // 전량 매수
            timingStock += timingMoney / stockPrices[i]
            timingMoney = timingMoney % stockPrices[i]
        }
    }
}

// 14일이 끝난 후 자산 가격
let bnp = bnpStock * stockPrices[13] + bnpMoney             // 준현
let timing = timingStock * stockPrices[13] + timingMoney    // 성민

if bnp > timing {
    print("BNP")
} else if bnp == timing {
    print("SAMESAME")
} else {
    print("TIMING")
}