import Foundation

func solution(_ t:String, _ p:String) -> Int {
    
    var answer = 0
    let length = p.count
    
    for i in 0...(t.count - length) {
        let start = t.index(t.startIndex, offsetBy: i)
        let end = t.index(start, offsetBy: length)
        let sub = t[start..<end]
        
        if Int(sub)! <= Int(p)! {
            answer += 1
        }
    }
    
    
    return answer
}