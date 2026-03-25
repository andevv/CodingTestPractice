func solution(_ a:Int, _ b:Int) -> Int64 {
    
    var answer: Int64 = 0
    
    for i in min(a, b)...max(a, b) {
        answer += Int64(i)
    }
    
    return answer
}