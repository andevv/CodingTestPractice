func solution(_ num: Int) -> Int {
    
    var number = num
    var count = 0
    
    while number != 1 {
        if count >= 500 { return -1 }
        
        if number.isMultiple(of: 2) {
            number = number / 2
        } else {
            number = number * 3 + 1
        }
        
        count += 1
    }
    
    return count
}