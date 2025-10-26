import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var tempA = A
    
    // 0번 밀었을 때부터 (A.count - 1)번 밀었을 때까지 확인
    for count in 0..<A.count {
        // 1. 현재 상태가 B와 일치하는지 확인
        if tempA == B {
            return count
        }
        
        // 2. 일치하지 않으면, A를 오른쪽으로 밀기
        guard let lastChar = tempA.popLast() else {
            return -1
        }
        // 떼어낸 마지막 문자를 맨 앞에 삽입
        tempA.insert(lastChar, at: tempA.startIndex)
    }
    
    return -1
}