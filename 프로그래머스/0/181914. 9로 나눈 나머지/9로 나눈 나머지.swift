import Foundation

func solution(_ number:String) -> Int {
    
    var sum = 0
    
    for i in number {
        sum += i.wholeNumberValue!
    }
    
    return sum % 9
}