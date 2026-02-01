import Foundation

func solution(_ n:Int) -> Int {
    
    var answer = 0
    
    if n.isMultiple(of: 2) {
        var i = 2
        while i <= n {
            answer += i * i
            i += 2
        }
    } else {
        var i = 1
        while i <= n {
            answer += i
            i += 2
        }
    }
    
    return answer
}