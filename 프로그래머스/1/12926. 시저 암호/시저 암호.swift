func solution(_ s: String, _ n: Int) -> String {
    var answer = ""
    
    for i in s {
        if i == " " {
            answer += " "
            continue
        }
        
        let ascii = Int(i.asciiValue!)
        
        if ascii >= 97 && ascii <= 122 {
            let shifted = ((ascii - 97 + n) % 26) + 97
            answer += String(UnicodeScalar(shifted)!)
        } else if ascii >= 65 && ascii <= 90 {
            let shifted = ((ascii - 65 + n) % 26) + 65
            answer += String(UnicodeScalar(shifted)!)
        }
    }
    
    return answer
}