import Foundation

func solution(_ A: [Int], _ B: [Int]) -> Int {
    var answer: Int = 0

    let sortedA = A.sorted()
    let sortedB = B.sorted(by: >)
    
    for i in 0..<A.count {
        answer += sortedA[i] * sortedB[i]
    }
    
    return answer
}