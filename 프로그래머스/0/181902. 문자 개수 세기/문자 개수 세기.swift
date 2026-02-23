import Foundation

func solution(_ my_string:String) -> [Int] {
    var answer: [Int] = Array(repeating: 0, count: 52)
    
    for i in my_string {
        let ascii = i.unicodeScalars.first!.value
        
        if ascii >= 65 && ascii <= 90 {
            // A~Z -> 0~25
            answer[Int(ascii - 65)] += 1
        } else if ascii >= 97 && ascii <= 122 {
            // a~z -> 26~51
            answer[Int(ascii - 97) + 26] += 1
        }
    }
    
    return answer
}