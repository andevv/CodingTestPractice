import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    
    var answer = ""
    let arr = Array(my_string)
    var idx = c - 1
    
    while idx < arr.count {
        answer += String(arr[idx])
        idx += m
    }
    
    return answer
}