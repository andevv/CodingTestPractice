func solution(_ a: Int, _ b: Int) -> String {
    let days = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    let month = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    var total = 0
    
    for i in 0..<(a - 1) {
        total += month[i]
    }
    
    total += (b - 1)
    
    return days[total % 7]
}