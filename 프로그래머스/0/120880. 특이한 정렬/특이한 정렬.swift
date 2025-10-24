import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.sorted { a, b in
      //1. n과의 거리를 각각 계산
       let distA = abs(a - n)
       let distB = abs(b - n)

       //2. 거리를 비교
       if distA != distB {
           return distA < distB
       } else {
           // 3. 거리가 같다면
           return a > b
       }
    }
}