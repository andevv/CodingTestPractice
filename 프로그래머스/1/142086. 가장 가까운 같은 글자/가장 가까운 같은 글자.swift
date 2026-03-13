import Foundation

func solution(_ s:String) -> [Int] {
    
    var answer: [Int] = []
    var dict: [Character: Int] = [:]
    
    for (i, v) in s.enumerated() {
        if let prev = dict[v] {
            answer.append(i - prev)
        } else {
            answer.append(-1)
        }
        
        dict[v] = i
    }
    
    return answer
}