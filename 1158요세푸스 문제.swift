import Foundation

let data = readLine()!.components(separatedBy: " ").map({Int($0)!})

let n = data[0]
var k = data[1]
var now = k-1 //위치

var list = Array(1...n)

var result: [Int] = [] // 결과

while true {
    result.append(list.remove(at: now)) // k-1 번째를 지우고 붙여줌
    if list.count == 0 {
        break
    }
    now = (now + k-1)%list.count // 몇번째인지
    
}

print("<" + result.map({ String($0) }).joined(separator: ", ") + ">")
