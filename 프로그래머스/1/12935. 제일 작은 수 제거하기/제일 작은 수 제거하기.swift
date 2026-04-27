func solution(_ arr: [Int]) -> [Int] {
    
    if arr.count == 1 { return [-1] }
    
    var answer = arr
    let min = arr.min()!
    let index = answer.firstIndex(of: min)!
    answer.remove(at: index)
    
    return answer
}