import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    
    var answer = my_string
    
    // 시작 인덱스와 끝 인덱스 계산
    let start = answer.index(answer.startIndex, offsetBy: s)
    let end = answer.index(start, offsetBy: overwrite_string.count)
    
    // 해당 범위를 overwrite_string으로 교체
    answer.replaceSubrange(start..<end, with: overwrite_string)
    
    return answer
}