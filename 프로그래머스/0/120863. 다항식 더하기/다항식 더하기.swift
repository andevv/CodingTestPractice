import Foundation

func solution(_ polynomial:String) -> String {
    var xCoefficient = 0 // 'x'항의 계수를 더할 변수
    var constantSum = 0 // 상수항을 더할 변수
    
    // 1. " + "를 기준으로 문자열을 쪼개어 각 항을 배열로 만듦
    let terms = polynomial.components(separatedBy: " + ")
    
    // 2. 각 항을 순회
    for term in terms {
        // 2-1. 항이 "x"를 포함하는 경우
        if term.contains("x") {
            if term == "x" {
                // 항이 "x"이면 계수 1
                xCoefficient += 1
            } else {
                // 항의 계수가 있다면 "x"를 제거하고 숫자로 변환
                let coefficientString = term.replacingOccurrences(of: "x", with: "")
                if let coeff = Int(coefficientString) {
                    xCoefficient += coeff
                }
            }
        } else {
            // 2-2. 항이 "x"를 포함하지 않는 경우
            if let const = Int(term) {
                constantSum += const
            }
        }
    }
    
    // 3. 결과 문자열 조립
    var resultParts: [String] = []
    
    // "x"항 처리
    if xCoefficient == 1 {
        resultParts.append("x")
    } else if xCoefficient > 1 {
        resultParts.append("\(xCoefficient)x")
    }
    
    // 상수항 처리
    if constantSum > 0 {
        resultParts.append("\(constantSum)")
    }
    
    // 4. 조립된 부분들을 " + "로 연결하여 최종 문자열 반환
    return resultParts.joined(separator: " + ")
}