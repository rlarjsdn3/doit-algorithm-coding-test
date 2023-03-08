import Foundation

// 표의 크기 N과 질의 개수 M 입력 받기
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let (n, m) = (input[0], input[1])

var array2D = [[Int]]()
// 표의 정보 입력 받기
for _ in 0..<n {
    array2D.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

var hArray2D = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: n + 1)
// 합 배열 계산하기
for i in 1...n {
    for j in 1...n {
        hArray2D[i][j] = hArray2D[i-1][j] + hArray2D[i][j-1] - hArray2D[i-1][j-1] + array2D[i-1][j-1]
    }
}

// 결과값을 저장할 변수
var result = [Int]()
// 범위 입력 받고, 구간합 구하기
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (x1, y1, x2, y2) = (input[0], input[1], input[2], input[3])
    // 구간 합 결과 저장하기
    result.append(hArray2D[x2][y2] - hArray2D[x1-1][y2] - hArray2D[x2][y1-1] + hArray2D[x1-1][y1-1])
}

// 결과값 출력하기
result.forEach {
    print($0)
}
