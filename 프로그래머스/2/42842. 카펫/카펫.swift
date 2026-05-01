import Foundation

func solution(_ brown: Int, _ yellow: Int) -> [Int] {
    
    var answer: [Int] = []
    
    for i in (1...yellow).reversed() {
        if yellow % i == 0 {
            let w = i + 2
            let h = yellow / i + 2
            if (w * 2) + (h - 2) * 2 == brown {
                answer.append(w)
                answer.append(h)
                break
            }
        }
    }
    
    return answer
}