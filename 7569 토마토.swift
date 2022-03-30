//
//  main.swift
//  Algorithm
//
//  Created by kokojong on 2022/03/29.
//

// 7569 토마토 

let data = readLine()!.split(separator: " ").map { Int(String($0))! }

let m = data[0] // 가로
let n = data[1] // 세로
let h = data[2] // 높이

// 정수 1은 익은 토마토, 정수 0 은 익지 않은 토마토, 정수 -1은 토마토가 들어있지 않은 칸을 나타낸다
var board = Array(repeating: Array(repeating: [Int](), count: n), count: h)

// board[h][n][m]  h r c

for k in 0..<h {
    
    for i in 0..<n {
        
        board[k][i].append(contentsOf: readLine()!.split(separator: " ").map{ Int(String($0))! })
        
    }
    
}

// h n m (h r c)순
var queue: [(Int, Int, Int)] = []

for k in 0..<h {
    for i in 0..<n {
        for j in 0..<m {
            if board[k][i][j] == 1 {
                queue.append((k, i , j))
            }
        }
        
    }
}

var index = 0

let d: [(Int, Int, Int)] = [ (-1,0,0), (1,0,0), (0,1,0), (0,-1,0), (0,0,1), (0,0,-1) ]

while queue.count > index {
    
    let q = queue[index]
    
    index += 1
    
    for i in 0..<6 {
        let kk = q.0 + d[i].0
        let nn = q.1 + d[i].1
        let mm = q.2 + d[i].2
        
        if kk < h && kk >= 0 && nn < n && nn >= 0 && mm < m && mm >= 0 {
            
            if board[kk][nn][mm] == 0 {
                queue.append((kk,nn,mm))
                board[kk][nn][mm] = board[q.0][q.1][q.2] + 1
            }
            
        }
    }
    
}

func getAnswer() -> Int {
    var answer = -1
    for k in 0..<h {
        for i in 0..<n {
            for j in 0..<m {
                if board[k][i][j] == 0 {
                    return -1
                }
                
                answer = max(answer, board[k][i][j])
                
                
            }
            
        }
    }
    
    return answer-1 // 시작시간 1을 빼줌
}



print(getAnswer())
