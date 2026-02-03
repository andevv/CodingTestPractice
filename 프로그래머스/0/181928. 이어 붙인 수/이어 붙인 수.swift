import Foundation

func solution(_ num_list:[Int]) -> Int {
    
    var even = ""
    var odd = ""
    
    for i in num_list {
        if i.isMultiple(of: 2) { //짝수
            even.append(String(i))
        } else { //홀수
            odd.append(String(i))
        }
    }
    
    return Int(even)! + Int(odd)!
}