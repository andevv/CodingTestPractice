import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    
    var newAbsolutes = absolutes
    
    for i in 0..<signs.count {
        if signs[i] == false {
            newAbsolutes[i] = -newAbsolutes[i]
        }
    }
    
    return newAbsolutes.reduce(0, +)
}