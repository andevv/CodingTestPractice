import Foundation

func solution(_ n:Int) -> Int {
    /* 
    1부터 n까지의 숫자 중,
    n을 나누어 떨어지게 하는 수(약수)를 골라냄
    */
    return (1...n).filter { n % $0 == 0 }.count
}