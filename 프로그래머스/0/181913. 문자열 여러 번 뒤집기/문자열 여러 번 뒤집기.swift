import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    
    // 1. String을 문자 배열(Array<Character>)로 변환
    // Swift에서 String은 직접 인덱스로 수정하기 어렵기 때문
    var charArray = Array(my_string)
    
    // 2. 모든 queries 순서대로 반복
    for query in queries {
        let s = query[0]
        let e = query[1]
        
        // 3. 배열의 [s...e] 범위 뒤집기
        // 배열의 s부터 e까지 Slice
        // .reversed()로 뒤집기
        // 원본 배열의 s...e 범위를 해당 부분으로 교체
        charArray.replaceSubrange(s...e, with: charArray[s...e].reversed())
    }
    return String(charArray)
}