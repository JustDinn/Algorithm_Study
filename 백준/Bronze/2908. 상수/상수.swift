let input = readLine()!.split(separator: " ")
let (a, b) = (String(input[0].reversed()), String(input[1].reversed()))
let (numA, numB) = (Int(a)!, Int(b)!)

numA > numB ? print(numA) : print(numB)