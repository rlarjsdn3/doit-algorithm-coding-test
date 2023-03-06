import Foundation

// 수의 개수 N과 질의 개수 M 입력 받기
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let (n, m) = (input[0], input[1])
// 구간 합을 구할 대상 배열 입력 받기
let array = readLine()!.split(separator: " ").map { Int(String($0))! }

// 합 배열 만들기
var hap = [0]
for i in array {
    hap.append(hap.last! + i)
}

// 결과값을 저장할 변수
var result = [Int]()
// 구간 i와 j 입력 받아 결과값 저장하기
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (i, j) = (input[0], input[1])
    result.append(hap[j] - hap[i - 1])
}

// 결과값 출력하기
result.forEach {
    print($0)
}
