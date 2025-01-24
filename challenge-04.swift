// Practive error throwing, and create a brute-force type find-SQRT function

import Foundation

enum OutOfBoundsError: Error {
    case tooLow, tooHigh, noSquareRoot
}

func acceptNumber1to10000(_ number: Int) throws -> Int {
    if number < 1 { throw OutOfBoundsError.tooLow }
    if number > 10000 { throw OutOfBoundsError.tooHigh }
    
    var squarerootNumber: Int = 0
    
    for i in 1...number {
        if i * i == number {
            squarerootNumber = i
            print("Squareroot for \(number) is \(i).")
            break
        } else if i == number {
            throw OutOfBoundsError.noSquareRoot
        }
    }
    
    return squarerootNumber
}


do {
    try acceptNumber1to10000(25)
} catch OutOfBoundsError.tooLow {
    print("Too low. Number must be at least 1.")
} catch OutOfBoundsError.tooHigh {
    print("Too high. Number must be equal or less than 10,000.")
} catch OutOfBoundsError.noSquareRoot {
    print("There is no square root for this number.")
}
