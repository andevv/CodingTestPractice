import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    
    // [응급도: 순위] 저장 딕셔너리
    var rankMap = [Int: Int]()
    
    // 1. 내림차순 정렬 후, (인덱스, 값)을 순회
    for (index, value) in emergency.sorted(by: >).enumerated() {
        // 2. [값: 순위] 형태로 딕셔너리에 저장
        rankMap[value] = index + 1
    }
    
    // 3. 원본 배열을 순회하며 딕셔너리에서 순위를 꺼내 새 배열을 만듦
    return emergency.map { rankMap[$0]! }
}