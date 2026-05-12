func solution(_ n: Int, _ m: Int) -> [Int] {
    
    func gcd(_ a: Int, _ b: Int) -> Int {
        if b == 0 {
            return a
        }

        return gcd(b, a % b)
    }
    
    let g = gcd(n, m)
    let l = n * m / g
    
    return [g, l]
}