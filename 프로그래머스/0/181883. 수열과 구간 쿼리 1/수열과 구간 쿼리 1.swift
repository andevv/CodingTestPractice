import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    
    // 1. 변경 가능한 복사본 생성
    /*
    Swift에서 함수의 파라미터(arr)는 기본적으로 let으로 취급되어 직접 수정 불가.
    var 키워드를 사용해 arr의 값을 복사한 resultArray를 만듦.
    */
    var resultArray = arr
    
    // 2. 쿼리 순회
    /*
    queries 배열에 담긴 각 쿼리를 하나씩 순서대로 꺼내 query 변수에 담아 반복 실행.
    */
    for query in queries {
        
        // 3. 시작 및 끝 인덱스 추출
        /*
        현재 query에서 첫 번째 값을 s에,
        두 번째 값을 e에 저장
        */
        let s = query[0]
        let e = query[1]
        
        // 4. 범위 내 인덱스 순회
        for i in s...e {
            
            // 5. 값 증가
            resultArray[i] += 1
        }
    }
    
    return resultArray
}