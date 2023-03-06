import Foundation

// 과목의 개수 N 입력 받기
let n = Double(readLine()!)!
// 성적의 정보 입력 받기
var scores = readLine()!.split(separator: " ").map { Double(String($0))! }
// 가장 높은 점수를 저장한 변수
var max = Double(scores.max()!)
// 결과값 출력하기
print(scores.reduce(0, +) * 100 / (n * max))

// NOTE: - 코드 줄이기
// ((A / M * 100) + (B / M * 100) + (C / M * 100)) / 3
// = (A + B + C) * 100 / (n * M)와 같이 식을 단순화시킬 수 있습니다.
