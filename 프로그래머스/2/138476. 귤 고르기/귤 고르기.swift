import Foundation

func solution(_ k: Int, _ tangerine: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    
    for i in tangerine {
        dict[i, default: 0] += 1
    }

    let sorted = dict.values.sorted(by: >)
    var sum = 0
    var count = 0
    
    for i in sorted {
        sum += i
        count += 1
        
        if sum >= k { break }
    }

    return count
}