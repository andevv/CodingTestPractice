import Foundation

func solution(_ arr1: [Int], _ arr2: [Int]) -> Int {
    let one = arr1.count
    let two = arr2.count
    
    if one != two {
        return one > two ? 1 : -1
    }
    
    let sum1 = arr1.reduce(0, +)
    let sum2 = arr2.reduce(0, +)

    if sum1 == sum2 { return 0 }

    return sum1 > sum2 ? 1 : -1
}