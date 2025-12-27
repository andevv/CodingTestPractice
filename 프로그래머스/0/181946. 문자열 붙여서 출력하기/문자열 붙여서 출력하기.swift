import Foundation

let input = readLine()!.components(separatedBy: " ").map { $0 }
let (str1, str2) = (input[0], input[1])

let answer = str1 + str2
print(answer)