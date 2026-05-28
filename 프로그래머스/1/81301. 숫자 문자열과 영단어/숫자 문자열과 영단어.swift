import Foundation

func solution(_ s: String) -> Int {
    let numbers = [
        "zero", "one", "two", "three", "four",
        "five", "six", "seven", "eight", "nine"
    ]
    
    var answer = s
    
    for i in 0..<numbers.count {
        answer = answer.replacingOccurrences(of: numbers[i], with: "\(i)")
    }
    
    return Int(answer)!
}