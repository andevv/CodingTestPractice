import Foundation

func solution(_ s:String) -> Int {
    
    var count = 0
    var xCount = 0
    var nCount = 0
    let str = Array(s)
    var x = str[0]
    
    for i in 0..<str.count {
        if str[i] == x {
            xCount += 1
        } else {
            nCount += 1
        }
        
        if xCount == nCount {
            count += 1
            xCount = 0
            nCount = 0
            
            if i + 1 < str.count {
                x = str[i + 1]
            }
        }
    }
    
    if xCount != 0 || nCount != 0 {
        count += 1
    }
    
    return count
}