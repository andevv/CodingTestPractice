import Foundation

func solution(_ array:[Int]) -> Int {
    
    // 1. [7, 77, 17]
    // 2. map { String($0) } -> ["7", "77", "17"]
    // 3. joined() -> "77717"
    // 4. filter { $0 == "7" } -> ["7", "7", "7", "7"]
    // 5. count -> 4
    
    return array.map { String($0) }.joined().filter { $0 == "7" }.count
}