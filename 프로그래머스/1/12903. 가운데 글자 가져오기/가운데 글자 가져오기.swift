func solution(_ s:String) -> String {
    
    let count = s.count
    let center = count / 2
    
    if count.isMultiple(of: 2) {
        let start = s.index(s.startIndex, offsetBy: center - 1)
        let end = s.index(s.startIndex, offsetBy: center + 1)
        return String(s[start..<end])
    } else {
        let index = s.index(s.startIndex, offsetBy: center)
        return String(s[index])
    }
}