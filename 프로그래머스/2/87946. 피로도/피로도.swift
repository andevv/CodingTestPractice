import Foundation

func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    
    var answer: Int = 0
    var visited = Array(repeating: false, count: dungeons.count)
    
    func backtracking(_ currentK: Int, _ count: Int) {
        
        if count > answer {
            answer = count
        }
        
        for i in 0..<dungeons.count {
            if currentK >= dungeons[i][0] && !visited[i] {
                visited[i] = true
                backtracking(currentK - dungeons[i][1], count + 1)
                visited[i] = false
            }
        }
    }
    
    backtracking(k, 0)
    
    return answer
}