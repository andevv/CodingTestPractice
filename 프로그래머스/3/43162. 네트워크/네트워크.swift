import Foundation

func solution(_ n: Int, _ computers: [[Int]]) -> Int {
    var visited = Array(repeating: false, count: n)
    var count = 0
    
    func dfs(_ node: Int) {
        visited[node] = true
        
        for i in 0..<n {
            if computers[node][i] == 1 && !visited[i] {
                dfs(i)
            }
        }
    }
    
    for i in 0..<n {
        if !visited[i] {
            count += 1
            dfs(i)
        }
    }
    
    return count
}