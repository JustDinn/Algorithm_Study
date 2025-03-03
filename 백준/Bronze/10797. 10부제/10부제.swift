let day = Int(readLine()!)!
let cars = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0

for car in cars {
    if car == day {
        count += 1
    }
}

print(count)