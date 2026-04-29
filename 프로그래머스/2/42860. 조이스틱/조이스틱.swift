import Foundation

func solution(_ name:String) -> Int {
    let chars = Array(name)
    var total = 0
    
    // 상하 이동
    for char in chars {
        let ascii = char.asciiValue!
        let a = Character("A").asciiValue!
        let z = Character("Z").asciiValue!
        
        let up = ascii - a
        let down = z - ascii + 1
        
        total += Int(min(up, down))
    }
    
    // 좌우 이동
    let n = name.count
    var minMove = n - 1 //오른쪽으로 쭉 갈 때
    
    for i in 0..<n {
        var next = i + 1
        
        while next < n && chars[next] == "A" {
            next += 1
        }
        
        let moveRightThenLeft = i * 2 + (n - next)
        let moveLeftThenRight = (n - next) * 2 + i
        
        minMove = min(minMove, moveRightThenLeft, moveLeftThenRight)
    }
    
    return total + minMove
}