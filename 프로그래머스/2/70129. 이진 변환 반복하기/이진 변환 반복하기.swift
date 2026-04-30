import Foundation

func solution(_ s: String) -> [Int] {
    var s = s
    var binaryCount = 0
    var zeroCount = 0
    
    while s != "1" {
        var c = s.filter { $0 == "1" }.count
        zeroCount += (s.count - c)
        
        s = String(c, radix: 2)
        binaryCount += 1
    }
    
    return [binaryCount, zeroCount]
}