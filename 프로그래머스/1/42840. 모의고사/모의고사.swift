import Foundation

func solution(_ answers: [Int]) -> [Int] {
    let p1 = [1,2,3,4,5]
    let p2 = [2,1,2,3,2,4,2,5]
    let p3 = [3,3,1,1,2,2,4,4,5,5]
    
    var score = [0, 0, 0]
    
    for i in 0..<answers.count {
        if answers[i] == p1[i % p1.count] {
            score[0] += 1
        }
        if answers[i] == p2[i % p2.count] {
            score[1] += 1
        }
        if answers[i] == p3[i % p3.count] {
            score[2] += 1
        }
    }
    
    let maxScore = score.max()!
    
    var answer: [Int] = []
    
    for i in 0..<score.count {
        if score[i] == maxScore {
            answer.append(i+1)
        }
    }
    
    return answer
}