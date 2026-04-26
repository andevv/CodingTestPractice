import Foundation

func solution(_ clothes: [[String]]) -> Int {
    var answer: Int = 1
    var dict: [String: Int] = [:]
    
    for i in clothes {
        let type = i[1]
        dict[type, default: 0] += 1
    }
    
    for count in dict.values {
        answer *= count + 1
    }
    
    return answer - 1
}