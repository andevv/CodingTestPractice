import Foundation

func solution(_ n: Int, _ words: [String]) -> [Int] {
    var used: Set<String> = []
    
    for i in 0..<words.count {
        let person = i % n + 1
        let turn = i / n + 1
        
        if i != 0 {
            let prev = words[i-1]
            let cur = words[i]
            
            used.insert(prev)
            
            if used.contains(cur) {
                return [person, turn]
            }
            
            if prev.last != cur.first {
                return [person, turn]
            }
        }
    }
    
    return [0, 0]
}