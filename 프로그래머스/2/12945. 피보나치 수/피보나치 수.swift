func solution(_ n: Int) -> Int {
    var prev = 0
    var curr = 1
    
    for _ in 2...n {
        let next = (prev + curr) % 1234567
        prev = curr
        curr = next
    }
    
    return curr
}