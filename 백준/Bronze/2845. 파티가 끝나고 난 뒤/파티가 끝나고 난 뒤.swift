let input = readLine()!.split(separator: " ").map { Int($0)! }
let articles = readLine()!.split(separator: " ").map { Int($0)! }
let (person, area) = (input[0], input[1])

for article in articles {
    print(article - person * area, terminator: " ")
}