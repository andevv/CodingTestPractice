import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
    
    var arr = Array(my_string)
    
    for i in indices.sorted(by: >) {
        arr.remove(at: i)
    }
    
    return String(arr)
}