import Foundation

func solution(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    var answer: [Int] = []
    
    for i in 0..<commands.count {
        let start = commands[i][0]
        let end = commands[i][1]
        let k = commands[i][2]
        
        let slice = array[start-1...end-1]
        let sorted = slice.sorted()
        answer.append(sorted[k-1])
    }
    
    return answer
}