// 6198 옥상 정원 꾸미기
import Foundation

let n = Int(readLine()!)!
var data : [Int] = []

var answer = 0

for _ in (0..<n) {
    data.append(Int(readLine()!)!)
}



// 하나하나 해본다면 -> 시간초과
//for i in (0..<n-1) { // 기준
//    for j in (i+1..<n) { // 오른쪽(i+1 부터 n-1까지)
//        if data[i] > data[j] {
//            result += 1
//        } else {
//            break
//        }
//
//    }
//}

var stack: [Int] = []

for i in (0...n-1) {
    while stack.count != 0 && stack.last! <= data[i] {
        stack.removeLast()
    }
    
    stack.append(data[i])
    answer += stack.count - 1
    
}

print(answer)
