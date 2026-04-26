import Foundation

func solution(_ n: Int, _ lost: [Int], _ reserve: [Int]) -> Int {
    var lostSet = Set(lost)
    var reserveSet = Set(reserve)
    
    let commonValues = lostSet.intersection(reserveSet)
    lostSet.subtract(commonValues)
    reserveSet.subtract(commonValues)

    for i in reserveSet.sorted() {
        if lostSet.contains(i - 1) {
            lostSet.remove(i - 1)
        } else if lostSet.contains(i + 1) {
            lostSet.remove(i + 1)
        }
    }
    
    return n - lostSet.count
}