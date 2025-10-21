import Foundation

let menu = [
    "iceamericano": 4500,
    "americanoice": 4500,
    "hotamericano": 4500,
    "americanohot": 4500,
    "icecafelatte": 5000,
    "cafelatteice": 5000,
    "hotcafelatte": 5000,
    "cafelattehot": 5000,
    "americano": 4500,
    "cafelatte": 5000,
    "anything": 4500
]

func solution(_ orderList: [String]) -> Int {
    var sum = 0
    
    for order in orderList {
        if let price = menu[order] {
            sum += price
        }
    }
    return sum
}