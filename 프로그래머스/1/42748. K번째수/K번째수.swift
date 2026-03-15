import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var answer: [Int] = []
    
    for i in commands {
        let start = i[0]
        let end = i[1]
        let k = i[2]
        var slice = array[start-1...end-1]
        let sort = slice.sorted()
        
        answer.append(sort[k-1])
    }
    
    return answer
}