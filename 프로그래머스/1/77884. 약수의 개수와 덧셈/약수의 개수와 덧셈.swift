import Foundation

func solution(_ left: Int, _ right: Int) -> Int {
    
    func countDivisor(_ n: Int) -> Int {
        var count = 0
        
        for i in 1...n {
            if n % i == 0 {
                count += 1
            }
        }
        
        return count
    }
    
    var answer: Int = 0
    
    for i in left...right {
        let count = countDivisor(i)
        
        if count.isMultiple(of: 2) {
            answer += i
        } else {
            answer -= i
        }
    }
    
    return answer
}