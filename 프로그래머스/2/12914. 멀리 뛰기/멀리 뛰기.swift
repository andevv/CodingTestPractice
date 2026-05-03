func solution(_ n: Int) -> Int {
    if n <= 2 { return n }
    
    var a = 1
    var b = 2
    
    for _ in 3...n {
        let next = (a + b) % 1234567
        a = b
        b = next
    }
    
    return b
}