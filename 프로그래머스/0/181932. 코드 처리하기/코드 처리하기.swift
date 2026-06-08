import Foundation

func solution(_ code: String) -> String {
    var mode = 0
    var ret = ""
    
    for (idx, ch) in code.enumerated() {
        if ch == "1" {
            mode = 1 - mode
            continue
        }
        
        if mode == 0 && idx.isMultiple(of: 2) {
            ret.append(ch)
        }
        
        if mode == 1 && !idx.isMultiple(of: 2) {
            ret.append(ch)
        }
    }
    
    return ret.isEmpty ? "EMPTY" : ret
}