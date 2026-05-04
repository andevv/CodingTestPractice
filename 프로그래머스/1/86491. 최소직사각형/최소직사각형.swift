import Foundation

func solution(_ sizes: [[Int]]) -> Int {
    var width: [Int] = []
    var height: [Int] = []
    
    for size in sizes {
        let w = max(size[0], size[1])
        let h = min(size[0], size[1])
        
        width.append(w)
        height.append(h)
    }
    
    return width.max()! * height.max()!
}