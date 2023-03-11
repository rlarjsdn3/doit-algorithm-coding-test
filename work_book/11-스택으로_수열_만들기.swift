import Foundation

// 스택(Stack) 자료구조
struct Stack<T> {
    var items: [T] = []
    
    var isEmpty: Bool {
        items.isEmpty
    }
    
    mutating func push(_ element: T) {
        items.append(element)
    }
    
    @discardableResult
    mutating func pop() -> T? {
        guard !items.isEmpty else {
            return nil
        }
        return items.removeLast()
    }
    
    var top: T? {
        guard !items.isEmpty else {
            return nil
        }
        return items.last
    }
}

// 수열의 개수 N 입력 받기
let n = Int(readLine()!)!

var array = [Int]()
// 수열의 정보 입력 받기
for _ in 0..<n {
    array.append(Int(readLine()!)!)
}

// 결과를 저장하기 위한 변수
var result = [String]()
// 스택 초기화
var stack = Stack<Int>()
// 수열의 위치를 가리키는 변수 초기화
var k = 0

// 스택 수열을 만들 수 있는지 확인하기
for i in 1...n {
    // 스택에 요소 삽입
    stack.push(i)
    result.append("+")
    
    // 스택 상단에 값이 존재하면
    while let top = stack.top {
        // 스택 상단의 값과 스택 수열의 값이 일치하면
        if top == array[k] {
            stack.pop()
            k += 1
            result.append("-")
        // 스택 상단의 값과 스택 수열의 값이 일치하지 않으면
        } else {
            break // while문 탈출
        }
    }
}
// 스택에 값이 남아있지 않으면
if stack.isEmpty {
    // 스택 수열을 만들 수 있다는 의미
    result.forEach {
        print($0)
    }
// 스택에 값이 남아있으면
} else {
    // 스택 수열을 만들 수 없다는 의미
    print("NO")
}
