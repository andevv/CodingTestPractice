import Foundation

func solution(_ arr:[Int]) -> [Int] {
    
    var start = -1
    var end = -1
    
    for i in 0..<arr.count {
        if arr[i] == 2 {
            if start == -1 {
                start = i
            }
            end = i
        }
    }
    
    return start == -1 ? [-1] : Array(arr[start...end])
}