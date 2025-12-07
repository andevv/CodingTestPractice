import Foundation

let n = Int(readLine()!)!
var grid = [[Character]]()

for _ in 0..<n {
    grid.append(Array(readLine()!))
}

// 방향 벡터
let dirs = [(0,1), (0,-1), (1,0), (-1,0)]

// BFS 함수
func bfs(_ sr: Int, _ sc: Int, _ grid: [[Character]], _ visited: inout [[Bool]]) {
    let color = grid[sr][sc]
    var queue = [(sr, sc)]
    visited[sr][sc] = true
    
    var idx = 0
    while idx < queue.count {
        let (r, c) = queue[idx]
        idx += 1
        
        for (dr, dc) in dirs {
            let nr = r + dr
            let nc = c + dc
            
            if nr < 0 || nr >= n || nc < 0 || nc >= n { continue }
            if visited[nr][nc] { continue }
            if grid[nr][nc] != color { continue }
            
            visited[nr][nc] = true
            queue.append((nr, nc))
        }
    }
}

// 일반 기준 구역 수 계산
var visited = Array(repeating: Array(repeating: false, count: n), count: n)
var normalCount = 0

for r in 0..<n {
    for c in 0..<n {
        if !visited[r][c] {
            bfs(r, c, grid, &visited)
            normalCount += 1
        }
    }
}

// 색약 기준 grid 생성 (G → R)
var gridColorBlind = grid
for r in 0..<n {
    for c in 0..<n {
        if gridColorBlind[r][c] == "G" {
            gridColorBlind[r][c] = "R"
        }
    }
}

// 색약 기준 구역 수 계산
visited = Array(repeating: Array(repeating: false, count: n), count: n)
var blindCount = 0

for r in 0..<n {
    for c in 0..<n {
        if !visited[r][c] {
            bfs(r, c, gridColorBlind, &visited)
            blindCount += 1
        }
    }
}

// 출력
print("\(normalCount) \(blindCount)")
