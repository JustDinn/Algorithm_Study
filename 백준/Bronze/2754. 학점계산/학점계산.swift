let input = readLine()!
var score: [Character] = []
//var (grade, additional):(Character, Character)
input.forEach { score.append($0) }

let grade = score[0]
var additional: Character

if score.count == 2 {
    additional = score[1]
} else {
    additional = "0"
}

var result = 0.0

switch grade {
case "A":
    result += 4.0
case "B":
    result += 3.0
case "C":
    result += 2.0
case "D":
    result += 1.0
default:
    result = 0.0
}

switch additional {
case "+":
    result += 0.3
case "-":
    result -= 0.3
default:
    result += 0.0
}

print(result)