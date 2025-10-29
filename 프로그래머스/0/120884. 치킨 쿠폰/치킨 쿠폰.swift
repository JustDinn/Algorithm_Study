import Foundation

func solution(_ chicken: Int) -> Int {
    var coupons = chicken
    var serviceChickens = 0
    
    while coupons >= 10 {
        serviceChickens += coupons / 10
        coupons = coupons / 10 + coupons % 10
    }
    
    return serviceChickens
}