import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    
    let last = num_list[num_list.count - 1]
    let prev = num_list[num_list.count - 2]
    
    var answer = num_list
    
    if last > prev {
        let newValue = last - prev
        answer.append(newValue)
    } else {
        let newValue = last * 2
        answer.append(newValue)
    }
    
    return answer
}