import Foundation

guard let nodeInput = readLine(), let node = Int(nodeInput) else { exit(0) }
guard let edgeInput = readLine(), let edge = Int(edgeInput) else { exit(0) }

var graph = [[Int]](repeating: [], count: node + 1)
var visited = [Bool](repeating: false, count: node + 1)
var count = 0

// dfs 함수 정의
func dfs(node: Int) {
    // 노드 방문 처리
    visited[node] = true
    
    // 방문한 노드와 인접한 노드 검사
    for node in graph[node] {
        // 방문하지 않았다면 방문
        if visited[node] == false {
            dfs(node: node)
        }
    }
}

// 그래프 초기화
for _ in 0..<edge {
    let graphInfo = readLine()!.split(separator: " ").map { Int($0)! }

    graph[graphInfo[0]].append(graphInfo[1])
    graph[graphInfo[1]].append(graphInfo[0])
}

// 첫 노드 시작
dfs(node: 1)

// visited 검사
for v in visited {
    if v == true {
        count += 1
    }
}
print(count - 1)

// swift6 문법임. 백준에선 아직 swift5.5.2를 적용중이므로 다음에 사용하자.
//print(visited.count { $0 == true} - 1)