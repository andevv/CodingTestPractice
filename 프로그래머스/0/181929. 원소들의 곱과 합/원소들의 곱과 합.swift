import Foundation

func solution(_ num_list:[Int]) -> Int {
    
    var sum = num_list.reduce(0, +)
    var mul = num_list.reduce(1, *)
    
    return sum * sum > mul ? 1 : 0
}