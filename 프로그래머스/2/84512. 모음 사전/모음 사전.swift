import Foundation

func solution(_ word: String) -> Int {
    let vowels = ["A", "E", "I", "O", "U"]
    var count: Int = 0
    var found = false
    
    func dfs(_ str: String) {
        if found { return }
        if str.count > 5 { return }
        
        if str != "" {
            count += 1
            
            if str == word {
                found = true
                return
            }
        }
        
        for i in 0..<vowels.count {
            dfs(str + vowels[i])
        }
        
    }
    
    dfs("")
    
    return count
}