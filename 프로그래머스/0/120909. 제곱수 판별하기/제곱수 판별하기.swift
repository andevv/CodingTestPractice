import Foundation

func solution(_ n:Int) -> Int {
    // 1. n의 제곱근을 구함
    let root = sqrt(Double(n))
    
    // 2. 제곱근을 정수로 변환
    let intRoot = Int(root)
    
    // 3. 그 정수를 다시 제곱한 값이 원래 n과 같은지 비교
    if intRoot * intRoot == n {
        return 1 // 같다면 제곱수
    } else {
        return 2 // 다르다면 제곱수 아님
    }
}