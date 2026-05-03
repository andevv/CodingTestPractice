import Foundation

func solution(_ elements: [Int]) -> Int {
    var set: Set<Int> = []
    
    for i in 0..<elements.count {
        var sum = 0
        
        for j in 0..<elements.count {
            let index = (i + j) % elements.count
            sum += elements[index]
            set.insert(sum)
        } 
    }
    
    return set.count
}