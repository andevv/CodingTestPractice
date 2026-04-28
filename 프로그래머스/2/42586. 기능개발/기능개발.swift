import Foundation

func solution(_ progresses: [Int], _ speeds: [Int]) -> [Int] {
    var days: [Int] = []
    
    //각 작업의 완료일 계산 (올림 처리)
    for i in 0..<progresses.count {
        let day = (100 - progresses[i] + speeds[i] - 1) / speeds[i]
        days.append(day)
    }
    
    //앞 작업 기준으로 배포 날짜 맞추기
    var tmp: [Int] = []
    var current = days[0]
    
    for day in days {
        if day <= current {
            tmp.append(current)
        } else {
            current = day
            tmp.append(current)
        }
    }
    
    //같은 날 배포되는 것끼리 카운트
    var answer: [Int] = []
    var current2 = tmp[0]
    var count = 1
    
    for i in 1..<tmp.count {
        if tmp[i] == current2 {
            count += 1
        } else {
            answer.append(count)
            current2 = tmp[i]
            count = 1
        }
    }
    answer.append(count)
    
    return answer
}