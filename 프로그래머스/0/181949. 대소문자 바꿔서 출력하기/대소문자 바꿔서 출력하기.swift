import Foundation

let input = readLine()!

let result = input.map { (char) -> String in
    if char.isUppercase {
        return char.lowercased()
    } else {
        return char.uppercased()
    }
}.joined()

print(result)