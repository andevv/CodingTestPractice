import Foundation

func solution(_ n:Int) -> Int {
    
    var x = 1
    
    while n % x != 1 {
        x += 1
    }
    
    return x
}