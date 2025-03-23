// 2 examples

import UIKit

// FizzBuzz example 1
for i in 1...100 {
    
    var output: String = "\(i)"
    
    if i.isMultiple(of: 3) || i.isMultiple(of: 5) {
        if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
            output = "FizzBuzz"
        } else if i.isMultiple(of: 3) {
            output = "Fizz"
        } else if i.isMultiple(of: 5) {
            output = "Buzz"
        }
    }
    print(output)
}

// FizzBuzz example 2
let NUM: Int = 100

for i in 1..<NUM {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else {
        print("\(i)")
    }
}

