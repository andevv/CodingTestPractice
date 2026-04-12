import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    
    var answer: Int = 0
    
    for i in array {
        if i > height {
            answer += 1
        }
    }
    
    return answer
}