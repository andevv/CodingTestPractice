import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    let chars = Array(my_string)
    var answer = ""
    
    for i in index_list {
        answer.append(chars[i])
    }
    
    return answer
}