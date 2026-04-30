import Foundation

func solution(_ n: Int) -> Int {
    var nextN = n + 1
    let binaryN = String(n, radix: 2)
    let targetCount = binaryN.filter { $0 == "1" }.count

    while true {
        let binaryNextN = String(nextN, radix: 2)
        let binaryNextN1Count = binaryNextN.filter { $0 == "1" }.count
        
        if binaryNextN1Count == targetCount { break }
        
        nextN += 1
    }
    
    return nextN
}