import UIKit

let string01 = "zyxwvutsrqponmlkjihgfedcba"
let string02 = "abcdefghijklmnopqrstuvwxyz"

compareStrings(string01, string02)

func compareStrings(_ string01: String, _ string02: String) -> Bool {
    string01.sorted() == string02.sorted()
}

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}
 let c = pythagoras(a: 3, b: 4)
print(c)


func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName))")


func rollDice(sides: Int, count: Int) -> [Int] {
    var rolls = [Int]()
    
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    return rolls
}

let rolls = rollDice(sides: 6, count: 10)
print(rolls)
