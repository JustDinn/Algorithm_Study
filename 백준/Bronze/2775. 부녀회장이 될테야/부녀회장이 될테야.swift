var count = 0
let n = Int(readLine()!)!

for _ in 0..<n {
    let floor = Int(readLine()!)!
    let room = Int(readLine()!)!
    
    count = countPeople(floor, room)
    print(count)
}

func countPeople(_ floor: Int, _ room: Int) -> Int {
    if floor == 0 {
        return room
    } else if room == 1 {
        return 1
    } else {
        return countPeople(floor, room - 1) + countPeople(floor - 1, room)
    }
}