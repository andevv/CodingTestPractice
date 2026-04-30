import Foundation

func solution(_ s: String) -> Int {
    var stack: [Character] = []
    
    for i in s {
        if i == stack.last {
            stack.removeLast()
        } else {
            stack.append(i)
        }
    }
    
    return stack.isEmpty ? 1 : 0
}