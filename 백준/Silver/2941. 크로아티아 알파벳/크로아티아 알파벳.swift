import Foundation

var word = readLine()!
var croatianAlphabet = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

while croatianAlphabet.count > 0 {
    for alphabet in croatianAlphabet {
        if word.contains(alphabet) {
            if let range = word.range(of: alphabet) {
                word.replaceSubrange(range, with: "*")
                break
            }
        } else {
            if let willRemoveIndex = croatianAlphabet.firstIndex(of: alphabet) {
                croatianAlphabet.remove(at: willRemoveIndex)
                break
            }
        }
    }
}

print(word.count)