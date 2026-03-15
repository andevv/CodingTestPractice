import Foundation

func solution(_ numbers:[Int]) -> String {
    
    let strNumbers = numbers.map { String($0) }
    
    let sortedNumbers = strNumbers.sorted { $0 + $1 > $1 + $0 }
    
    let answer = sortedNumbers.joined()
    
    return answer.first == "0" ? "0" : answer
}