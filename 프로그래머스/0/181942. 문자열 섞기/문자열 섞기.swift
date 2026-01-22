import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    var answer = ""
    
    for (s1, s2) in zip(str1, str2) {
        answer.append(s1)
        answer.append(s2)
    }
    
    return answer
}