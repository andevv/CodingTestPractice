import Foundation

func solution(_ price: Int, _ money: Int, _ count: Int) -> Int64{
    var total = 0
    
    for i in 1...count {
        total += price * i
    }
    
    if total > money {
        return Int64(abs(money - total))
    }
    
    return 0
}