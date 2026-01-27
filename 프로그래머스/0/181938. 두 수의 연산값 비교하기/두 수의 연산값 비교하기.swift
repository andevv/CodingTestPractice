import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    
    let num1 = Int("\(a)\(b)")!
    let num2 = 2 * a * b
    
    return max(num1, num2)
}