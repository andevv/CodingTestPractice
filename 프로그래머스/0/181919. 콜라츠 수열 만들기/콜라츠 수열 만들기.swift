import Foundation

func solution(_ n:Int) -> [Int] {
    
    var answer: [Int] = []
    answer.append(n)
    
    var tmp = n
    
    while tmp != 1 {
        if tmp.isMultiple(of: 2) {
            tmp = tmp / 2
            answer.append(tmp)
        } else {
            tmp = 3 * tmp + 1
            answer.append(tmp)
        }
    }
    
    return answer
}