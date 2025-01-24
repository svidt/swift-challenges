import UIKit

// FizzBuzz

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
