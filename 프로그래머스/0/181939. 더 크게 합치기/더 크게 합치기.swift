import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    
    let num1 = Int("\(a)\(b)")!
    let num2 = Int("\(b)\(a)")!
    
    return max(num1, num2)
}