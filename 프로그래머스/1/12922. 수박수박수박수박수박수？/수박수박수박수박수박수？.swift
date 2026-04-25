func solution(_ n: Int) -> String {
    var answer: String = ""
    var num = n
    
    let su = "수"
    let bak = "박"
    
    while num != 0 {
        if num.isMultiple(of: 2) {
            answer.append(bak)
        } else {
            answer.append(su)
        }
        
        num -= 1
    }
    
    return String(answer.reversed())
}