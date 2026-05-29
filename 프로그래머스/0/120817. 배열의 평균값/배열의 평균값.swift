import Foundation

func solution(_ numbers: [Int]) -> Double {
    let sum = numbers.reduce(0, +)
    
    return Double(sum) / Double(numbers.count)
}