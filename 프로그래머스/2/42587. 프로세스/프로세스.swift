import Foundation

func solution(_ priorities: [Int], _ location: Int) -> Int {
    var queue = priorities.enumerated().map { (priority: $0.element, index: $0.offset) }
    var count = 0
    
    while !queue.isEmpty {
        let first = queue.removeFirst()
        
        if queue.contains(where: { $0.priority > first.priority }) {
            queue.append(first)
        } else {
            count += 1
            
            if first.index == location {
                return count
            }
        }
    }
    
    return count
}