while true {
    var width = 0
    let input = readLine()!
    
    if input == "0" {
        break
    }
    
    input.forEach {
        switch $0 {
        case "0":
            width += 4
        case "1":
            width += 2
        default:
            width += 3
        }
    }
    print(width + (input.count * 1 - 1) + 2)
}