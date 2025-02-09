import Foundation

let arr = readLine()!.split(separator: " ").map { Int($0)! }

var dfsVisited = [Bool](repeating: false, count: arr[0] + 1)
var bfsVisited = [Bool](repeating: false, count: arr[0] + 1)

var graph = [[Int]](repeating: [], count: arr[0] + 1)

var dfsArr: [Int] = []
var bfsArr: [Int] = []

// Queue 정의
struct Queue<T> {
    private var queue: [T] = []
    
    var count: Int {
        return queue.count
    }
    
    var isEmpty: Bool {
        return queue.isEmpty
    }
    
    mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    mutating func dequeue() -> T? {
        return isEmpty ? nil : queue.removeFirst()
    }
}

func dfs(node: Int) {
    dfsVisited[node] = true
    dfsArr.append(node)
    
    for j in 0..<graph[node].count {
        if dfsVisited[graph[node][j]] == false {
            dfs(node: graph[node][j])
        }
    }
}

func bfs(node: Int) {
    bfsQueue.enqueue(node)
    bfsVisited[node] = true
    bfsArr.append(node)
    
    while !bfsQueue.isEmpty {
        guard let removedNode = bfsQueue.dequeue() else { exit(0) }
        
        for node in graph[removedNode] {
            if bfsVisited[node] == false {
                bfsVisited[node] = true
                bfsQueue.enqueue(node)
                bfsArr.append(node)
            }
        }
    }
}

for _ in 0..<arr[1] {
    // 그래프 정보 저장
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    graph[input[0]].append(input[1])
    graph[input[1]].append(input[0])
    
    graph[input[0]].sort()
    graph[input[1]].sort()
}

var bfsQueue = Queue<Int>()

dfs(node: arr[2])
bfs(node: arr[2])


for node in dfsArr {
    print(node, terminator: " ")
}
print()
for node in bfsArr {
    print(node, terminator: " ")
}
print()