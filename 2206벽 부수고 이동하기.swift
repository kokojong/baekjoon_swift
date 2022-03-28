//
//  main.swift
//  Algorithm
//
//  Created by kokojong on 2022/03/28.
//

//6 4
//0100
//1110
//1000
//0000
//0111
//0000

// 15

import Foundation

let data = readLine()!.components(separatedBy: " ").map( {Int($0)!})
let n = data[0]
let m = data[1]

// 0 -> 이동가능, 1 -> 막힘
var board: [[Int]] = []

for _ in 0..<n {
    let row = readLine()!.map{ Int(String($0))! }
    board.append(row)
}

var result = -1 // 안되면 -1

// 0~n-1 행, 0~m-1열, 내부에는 [방문정보, 부순 여부]
var visited = Array(repeating: Array(repeating: Array(repeating: 0, count: 2), count: m), count: n)

var queue: [[Int]] = [] // n,m (행, 열)

//queue.append([0,0])


// 우 하 좌 상
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]

queue = [[0,0,0]]
visited[0][0][0] = 1

// 강제로 하나를 뚫고 해본다면? (모든 경우)
        
while queue.count > 0 {
    
    let q = queue.removeFirst()
    let r = q[0]
    let c = q[1]
    let crash = q[2]
    
    if r == n-1 && c == m-1 {
//                print("도착", result)
//        answer.append(visited[r][c][0])
        result = visited[r][c][crash]
        break
    }
    
    for i in 0..<4 {
        let cc = c + dx[i] // x좌표(열)
        let rr = r + dy[i] // y좌표(행)
        
        if  cc < m && cc >= 0 && rr < n && rr >= 0  && visited[rr][cc][crash] == 0 { // board의 범위안에 있고, 방문 가능하다면
            if board[rr][cc] == 0 { // 안 부수고 방문 가능
                visited[rr][cc][crash] = visited[r][c][crash] + 1
                queue.append([rr,cc,crash])
                
            } else if crash == 0 { // 부술 수 있다면
                visited[rr][cc][1] = visited[r][c][crash] + 1
                queue.append([rr,cc,1])
                
            }
        }
    }
    
}

print(result)
//print(visited)



