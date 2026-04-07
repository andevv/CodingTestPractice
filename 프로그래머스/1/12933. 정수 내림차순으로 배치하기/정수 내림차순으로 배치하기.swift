func solution(_ n:Int64) -> Int64 {
    
    let sorted = String(n).map { String($0) }.sorted(by: >).joined()
    
    return Int64(sorted)!
}