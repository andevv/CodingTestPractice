import Foundation

func solution(_ citations: [Int]) -> Int {
    let sorted = citations.sorted(by: >)

    for i in 0..<sorted.count {
        if sorted[i] < i + 1 {
            return i
        }
    }
    
    return sorted.count
}