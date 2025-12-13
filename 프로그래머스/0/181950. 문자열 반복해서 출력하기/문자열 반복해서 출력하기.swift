import Foundation

let input = readLine()!.components(separatedBy: [" "]).map { $0 }
let (s1, a) = (input[0], Int(input[1])!)

print(String(repeating: s1, count: a))