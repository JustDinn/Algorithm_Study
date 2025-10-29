import Foundation

func solution(_ pictureLines: [String], _ k: Int) -> [String] {
    var result: [String] = []
    
    for picture in pictureLines {
        var pivotChar = Array(picture)[0]
        var tempResult = ""
        var temp = ""
        
        for char in picture {
            if pivotChar != char {
                // 문자가 바뀌었다면
                for _ in 0..<k {
                    tempResult += temp
                }
                temp = String(char)
                pivotChar = char
            } else {
                // 안 바뀌었다면
                temp += String(char)
            }
        }
        for _ in 0..<k {
            tempResult += temp
        }
        
        for _ in 0..<k {
            result.append(tempResult)
        }
        
        tempResult = ""
        temp = ""
    }
    
    return result
}