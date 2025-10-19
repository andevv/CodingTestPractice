import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    // k번 째 던지는 사람의 인덱스 계산
    // 1번 째 -> (1-1) * 2 = 0
    // 2번 째 -> (2-1) * 2 = 2
    // 3번 째 -> (3-1) * 2 = 4
    let index = ((k - 1) * 2)
    
    //원형이므로, 배열의 길이(n)로 나눈 나머지가 최종 인덱스 값
    let n = numbers.count
    let finalIndex = index % n
    
    // numbers 배열은 항상 [1, 2, 3, ...] 순서
    // finalIndex에 해당하는 사람의 번호는 finalIndex + 1
    return finalIndex + 1
}