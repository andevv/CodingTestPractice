import Foundation

func solution(_ numbers: [Int]) -> String {
    let str = numbers.map { String($0) }
    let sorted = str.sorted { ($0 + $1) > ($1 + $0) }
    let answer = sorted.joined()
    
    return answer.first == "0" ? "0" : answer
}