import Foundation

// 수의 개수 N 입력 받기
let n = Int(readLine()!)!
// N개의 수 입력 받기
var array = [Int]()
for _ in 0..<n {
    array.append(Int(readLine()!)!)
}

// 버블 정렬(Bubble Sort) 알고리즘
for i in 0..<n {
    for j in 0..<n-i-1 where array[j] > array[j+1] {
        array.swapAt(j, j+1)
    }
}
// 결과값 출력하기
array.forEach {
    print($0)
}
