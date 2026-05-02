import Foundation

func solution(_ n: Int) -> Int {
    var n = n
    var count = 0
    
    while n > 0 {
        if n.isMultiple(of: 2) {
            n = n / 2
        } else {
            n = n - 1
            count += 1
        }
    }

    return count
}