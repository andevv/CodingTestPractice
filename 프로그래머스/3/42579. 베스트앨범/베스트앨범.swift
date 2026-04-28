import Foundation

func solution(_ genres: [String], _ plays: [Int]) -> [Int] {
    var answer: [Int] = []
    var genrePlays: [String: Int] = [:] //장르별 총 재생 수
    var genreSongs: [String: [(Int, Int)]] = [:] //장르별 노래 목록
    
    for i in 0..<genres.count {
        let genre = genres[i]
        let play = plays[i]
        
        genrePlays[genre, default: 0] += play
        genreSongs[genre, default: []].append((i, play))
    }

    let sortedGenres = genrePlays.keys.sorted {
        return genrePlays[$0]! > genrePlays[$1]!
    }
    
    for genre in sortedGenres {
        var songs = genreSongs[genre]!
        songs.sort {
            if $0.1 == $1.1 {
                return $0.0 < $1.0
            }
            return $0.1 > $1.1
        }
        
        for song in songs.prefix(2) {
            answer.append(song.0)
        }   
    }
    
    return answer
}