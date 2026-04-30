import Foundation

func solution(_ numbers: String) -> Int {
    let nums = Array(numbers)
    let k = nums.count
    var visited = Array(repeating: false, count: k)
    var set: Set<Int> = []
    
    func dfs(_ current: String) {
        if !current.isEmpty {
            let num = Int(current)!
            set.insert(num)
        }
        
        for i in 0..<k {
            if visited[i] { continue }
            
            visited[i] = true
            dfs(current + String(nums[i]))
            visited[i] = false
        }
    }
    
    func isPrime(_ n: Int) -> Bool {
        if n <= 1 { return false }
        
        for i in 2..<n {
            if n % i == 0 { return false }
        }
        
        return true
    }
    
    dfs("")
    
    return set.filter { isPrime($0) }.count
}