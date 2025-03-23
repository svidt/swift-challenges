import UIKit

// Circular Linked List
class CircularLinkedListNode<T> {
    var value: T
    var next: CircularLinkedListNode<T>?
    
    init(value: T) {
        self.value = value
    }
}

class CircularLinedList<T> {
    var head: CircularLinkedListNode<T>?
    
    func append(_ value: T) {
        let newNode = CircularLinkedListNode(value: value)
        if head == nil {
            head = newNode
            newNode.next = head
            return
        }
        
        var current = head
        while current?.next !== head {
            current = current?.next
        }
        current?.next = newNode
        newNode.next = head
    }
    
    func printList(_ count: Int) {
        var current = head
        var iterations = count
        while iterations > 0, current != nil {
            print(current!.value, terminator: " -> ")
            current = current?.next
            iterations -= 1
        }
        print("...")
    }
}

let circularList = CircularLinedList<Int>()
circularList.append(1)
circularList.append(2)
circularList.append(3)
circularList.printList(6)

