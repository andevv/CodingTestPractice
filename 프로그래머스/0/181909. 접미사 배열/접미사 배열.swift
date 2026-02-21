import Foundation

func solution(_ my_string:String) -> [String] {
    
    var answer: [String] = []
    
    for i in 0..<my_string.count {
        let start = my_string.index(my_string.startIndex, offsetBy: i)
        let suffix = String(my_string[start...])
        answer.append(suffix)
    }
    
    return answer.sorted()
}