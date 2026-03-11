import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    var answer: [Int] = []
    
    let dict = Dictionary(uniqueKeysWithValues: zip(name, yearning))
    
    for i in photo {
        var sum = 0
        
        for j in i {
            sum += dict[j] ?? 0
        }
        
        answer.append(sum)
    }
    
    return answer
}