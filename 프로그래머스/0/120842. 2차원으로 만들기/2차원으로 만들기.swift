import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    
    // 1. 결과를 담을 2차원 빈 배열을 선언
    var result: [[Int]] = []
    
    // 2. stride(from:to:by) 함수를 사용해
    // n개씩 묶을 각 그룹의 시작 인덱스(i)를 순회
    // - form: 0
    // - to: num_list.count
    // - by: n
    for i in stride(from: 0, to: num_list.count, by:n ) {
        
        // 3. 각 묶음의 끝 인덱스를 계산
        let end = i + n
        
        // 4. num_list에서 i부터 (end - 1)까지의 부분을 slice
        let chunkSlice = num_list[i..<end]
        
        // 5. ArraySlice 타입인 slice를 Array([Int]) 타입으로 변환
        let chunkArray = Array(chunkSlice)
        
        // 6. 변환된 1차원 배열을 최종 result에 추가
        result.append(chunkArray)
    }
    
    return result
}