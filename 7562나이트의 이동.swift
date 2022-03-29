//
//  main.swift
//  Algorithm
//
//  Created by kokojong on 2022/03/29.
//


// 7562 나이트의 이동
import Foundation

let n = Int(readLine()!)!

for _ in (0..<n) {
    
    let l = Int(readLine()!)!
    
    var board = Array(repeating: Array(repeating: 0, count: l), count: l) // l * l
    
    let now = readLine()!.components(separatedBy: " ").map({Int($0)!})
    let c1 = now[0]
    let r1 = now[1]
    
    let to = readLine()!.components(separatedBy: " ").map({Int($0)!})
    let c2 = to[0]
    let r2 = to[1]
    
    var queue : [[Int]] = []
    
    let dc = [1, 2, 2, 1, -1, -2, -2, -1] // x좌표 c
    let dr = [-2, -1, 1, 2, 2, 1, -1, -2] // y좌표 r
    
    queue.append([c1, r1])
    board[c1][r1] = 0
    
    var index = 0
    
    while queue.count > index {
        let q = queue[index]
        
        let c = q[0]
        let r = q[1]
        
        index += 1
        
        if r == r2 && c == c2 {
//            print("도착",board[c][r],c,r)
            print(board[c][r])
            break
        }
        
        for i in 0..<8 {
            let cc = c + dc[i]
            let rr = r + dr[i]
            
            if cc <= l-1 && cc >= 0 && rr >= 0 && rr <= l-1 {
                
                if board[cc][rr] == 0 {
                    board[cc][rr] = board[c][r] + 1
                    queue.append([cc,rr])
                }
                
            }
        }
    }
    
    
}


