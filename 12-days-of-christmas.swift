import UIKit

for i in 1...12 {
    print("On the \(i) day of Christmas, my true love sent to me,")
    
    switch i {
    case 12:
        print("Twelve drummers drumming,")
        fallthrough
    case 11:
        print("Eleven pipers piping,")
        fallthrough
    case 10:
        print("Ten lords a-leaping,")
        fallthrough
    case 9:
        print("Nine ladies dancing,")
        fallthrough
    case 8:
        print("Eight maids a-milking")
        fallthrough
    case 7:
        print("Seven swans a-swimming")
        fallthrough
    case 6:
        print("Six geese a-laying")
        fallthrough
    case 5:
        print("Five golden rings")
        fallthrough
    case 4:
        print("Four calling birds")
        fallthrough
    case 3:
        print("Three French hens,")
        fallthrough
    case 2:
        print("Two turtle doves,")
        fallthrough
    default:
        print("\(i != 1 ? "And " : "")a partridge in a pear tree.\n")
    }   
}
