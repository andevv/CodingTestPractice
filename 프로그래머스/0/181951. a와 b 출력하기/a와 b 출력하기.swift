import Foundation

// 입력받은 한 줄을 공백으로 분리
let parts = readLine()!.components(separatedBy: " ")

// parts[0] -> a, parts[1] -> b
let a = Int(parts[0])!
let b = Int(parts[1])!

// 출력
print("a = \(a)")
print("b = \(b)")