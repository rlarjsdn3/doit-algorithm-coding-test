import Foundation

// 숫자의 개수 N 입력 받기
let n = Int(readLine()!)!
// 숫자 N개 입력 받기
let array = Array(readLine()!).map { Int(String($0))! }
// 결과값 출력하기
print(array.reduce(0, +))
