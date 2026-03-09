import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    
    var answer: [Int] = []
    
    for i in intervals {
        let start = i[0]
        let end = i[1]
        
        answer += arr[start...end]
    }
    
    return answer
}