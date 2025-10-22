import Foundation

func solution(_ q:Int, _ r:Int, _ code:String) -> String {
    
    // 1. 결과를 저장한 빈 문자열 선언
    var result = ""
    
    // 2. code.enumerated()로 문자열 순회
    for (index, char) in code.enumerated() {
        
        // 3. index를 q로 나눈 나머지가 r과 같은지 확인
        if index % q == r {
            result.append(char)
        }
    }
    
    return result
}