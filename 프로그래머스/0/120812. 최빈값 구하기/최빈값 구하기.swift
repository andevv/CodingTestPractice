import Foundation

func solution(_ array:[Int]) -> Int {
    // 1. 각 숫자의 빈도수를 계산
    // [Int: Int] 딕셔너리를 사용, {숫자: 빈도수} 형태로 저장
    let frequencyMap = array.reduce(into: [Int: Int]()) { (counts, number) in
        counts[number, default: 0] += 1
    }
    
    // 2. 딕셔너리를 빈도수 기준으로 내림차순 정렬
    let sortedEntries = frequencyMap.sorted { $0.value > $1.value }
    
    // 3. 최빈값 확인
    
    // 3-1. 맵에 항목이 하나 뿐인 경우 해당 숫자 반환
    if sortedEntries.count == 1 {
        return sortedEntries[0].key
    }
    
    // 3-2. 맵에 항목이 2개 이상인 경우
    if sortedEntries[0].value == sortedEntries[1].value {
        return -1
    } else {
        return sortedEntries[0].key
    }
}