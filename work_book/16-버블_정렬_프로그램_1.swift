import Foundation

// 배열의 크기 N 입력 받기
let n = Int(readLine()!)!
// 배열의 요소 입력 받기
var array: [(index: Int, element: Int)] = []
for i in 0..<n {
    array.append((i, Int(readLine()!)!))
}
// 배열 오름차순 정렬하기
array.sort { $0.element < $1.element }

// Swap이 한 번도 일어나지 않는 루프가 몇 번째인지 구하기
var maxValue = 0

for i in 0..<n {
    if maxValue < array[i].index - i {
        maxValue = array[i].index - i
    }
}
// 결과값 출력하기
print(maxValue + 1)
