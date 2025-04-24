import Foundation

print("Введите n: ", terminator: "")
if let input = readLine(), let n = Int(input) {
    for i in 1...n {
        for j in 0..<i {
            let asciiValue = Int(UnicodeScalar("A").value) + n - 1 - j
            if let scalar = UnicodeScalar(asciiValue) {
                print(Character(scalar), terminator: " ")
            }
        }
        print()
    }
} else {
    print("Некорректный ввод.")
}


