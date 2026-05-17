import Foundation

func solution(_ d: [Int], _ budget: Int) -> Int {
    let sorted = d.sorted()
    var sum = 0
    var count = 0
    
    for i in 0..<sorted.count {
        if sum + sorted[i] > budget { break }
        
        sum += sorted[i]
        count += 1
    }
    
    return count
}