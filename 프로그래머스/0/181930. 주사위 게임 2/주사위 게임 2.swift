import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    
    let set = Set([a, b, c])
    let count = set.count
    
    let sum1 = a + b + c
    let sum2 = (a * a) + (b * b) + (c * c)
    let sum3 = (a * a * a) + (b * b * b) + (c * c * c)
    
    // count == 3이면 모두 다름
    if count == 3 {
        return sum1
    }
    
    // count == 2면 둘만 같음
    if count == 2 {
        return sum1 * sum2
    }
    
    // count == 1이면 모두 같음
    return sum1 * sum2 * sum3
}