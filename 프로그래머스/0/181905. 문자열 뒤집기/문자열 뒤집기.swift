import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    // 1. 문자열을 문자 배열로 변환
    var chars = Array(my_string)
    
    // 2. s부터 e까지의 부분을 추출하고 뒤집기
    let reversed = chars[s...e].reversed()
    
    // 3. 원본 배열의 s...e 범위를 뒤집힌 부분으로 교체
    chars.replaceSubrange(s...e, with: reversed)
    
    // 4. 수정된 문자 배열을 다시 문자열로 합침
    return String(chars)
}