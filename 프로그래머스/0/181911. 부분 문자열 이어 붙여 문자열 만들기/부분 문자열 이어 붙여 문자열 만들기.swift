import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    
    var answer = ""
    
    for i in 0..<my_strings.count {
        let str = my_strings[i]
        let s = parts[i][0]
        let e = parts[i][1]
        
        let startIdx = str.index(str.startIndex, offsetBy: s)
        let endIdx = str.index(str.startIndex, offsetBy: e)
        
        answer += String(str[startIdx...endIdx])
    }
    
    return answer
}