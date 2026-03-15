func solution(_ s:String) -> String {
    
    var answer = ""
    var isStart = true
    
    for i in s {
        if i == " " {
            isStart = true
            answer.append(i)
        } else {
            if isStart {
                answer.append(i.uppercased())
                isStart = false
            } else {
                answer.append(i.lowercased())
            }
        }
    }
    
    return answer
}