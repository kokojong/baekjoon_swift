# 백준에서 푼 문제 정리하기

## 1158 요세푸스 문제

[문제 풀이](https://github.com/kokojong/baekjoon_swift/blob/main/1158%EC%9A%94%EC%84%B8%ED%91%B8%EC%8A%A4%20%EB%AC%B8%EC%A0%9C.swift)

</br>

알게 된 것

- 링크드 리스트를 직접 구현하지 않고 %를 통해서 구현함

## 6198 옥상 정원 꾸미기

[문제 풀이](https://github.com/kokojong/baekjoon_swift/blob/main/6198%EC%98%A5%EC%83%81%20%EC%A0%95%EC%9B%90%20%EA%BE%B8%EB%AF%B8%EA%B8%B0.swift)

</br>

알게 된 것

- stack을 활용한 본인보다 작은 빌딩의 수 세기(예전에 풀었던 가장 긴 증가하는 수열이라고 생각했는데 그건 Dp였다..ㅎ 헛다리)

## 2206 벽 부수고 이동하기

[문제 풀이](https://github.com/kokojong/baekjoon_swift/blob/main/2206%EB%B2%BD%20%EB%B6%80%EC%88%98%EA%B3%A0%20%EC%9D%B4%EB%8F%99%ED%95%98%EA%B8%B0.swift)

</br>

알게 된 것
- 기본적인 BFS에 벽을 부수는 것을 곁들인 문제(너무 어려워따...) 백트레킹처럼 다시 돌아가야하나...? 했는데 visited에 부쉈는지에 대한 정보를 추가하는것으로(3차원으로...) 완료!
- 처음에는 모든 경우를 다 체크하기 위해서 막힌 벽을 1개씩 뚫고 시작해보니 시간초과가 발생했다. (그럼 그렇지...) 정답을 슬쩍 보고 아이디어를 얻고 풀어도 시간초과가 났다...ㅎ...
- components을 split으로 바꾸고 import Foundation을 뺴주었다.
- Queue를 처리하는 방식에서 removeLast를 해주었는데 이게 O(N^2)이라고 했다.. 빼주고 다시 배열을 이어붙여서 오래걸린다고 한다. -> `while queue.count > index`으로 처리해서 queue의 인덱스에만 접근을 했다.

## 7562 나이트의 이동

[문제 풀이](https://github.com/kokojong/baekjoon_swift/blob/main/7562%EB%82%98%EC%9D%B4%ED%8A%B8%EC%9D%98%20%EC%9D%B4%EB%8F%99.swift)

</br> 

알게 된 것
- 기본적인 BFS의 연습. 기존에 하던 상하좌우가 아닌 8방향으로 dx, dy를 짜야함
- x좌표, y좌표 등으로 표기가 되면 아직 좀 헷갈린다. 그래서 r, c로 처리하기로 생각했다. board의 index 오류가 나지 않도록 `if board[cc][rr] == 0`를 조건문 내부로 이동했다.(&& 문이라서 오휴가 안날 것 같지만 가독성을 위해서 이렇게 처리했다.

## 7569 토마토

[문제 풀이](https://github.com/kokojong/baekjoon_swift/blob/main/7569%20%ED%86%A0%EB%A7%88%ED%86%A0.swift)

</br>

알게 된 것
- 3차원 BFS의 기본 연습. 3차원이다보니 x,y,z등으로 처리하기 헷갈려서 h, r, c를 활용함
- dx, dy, dz를 따로 만들지 않고 튜플을 활용해서 한번에 처리했다. (이게 더 편한 것 같다)
- 반복문을 아예 return으로 중단시키기 위해서 하나의 메서드로 처리함
- 
