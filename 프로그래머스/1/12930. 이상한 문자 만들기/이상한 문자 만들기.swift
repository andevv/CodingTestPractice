func solution(_ s: String) -> String {
    var answer = ""
    var index = 0
    
    for i in s {
        if i == " " {
            answer += " "
            index = 0
            continue
        }
        
        if index % 2 == 0 {
            answer += String(i).uppercased()
        } else {
            answer += String(i).lowercased()
        }
        
        index += 1
    }
    
    return answer
}