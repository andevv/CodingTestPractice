import Foundation

func solution(_ numLog:[Int]) -> String {
    var answer = ""
    
    for i in 1..<numLog.count {
        let diff = numLog[i] - numLog[i-1]
        
        if diff == 1 {
            answer.append("w")
        } else if diff == -1 {
            answer.append("s")
        } else if diff == 10 {
            answer.append("d")
        } else if diff == -10 {
            answer.append("a")
        }
    }
    
    return answer
}