import UIKit


// Doubly Linked List
class DoublyLinkedListNode<T> {
    var value: T
    var next: DoublyLinkedListNode<T>?
    var previous: DoublyLinkedListNode<T>?
    
    init(value: T) {
        self.value = value
    }
}

class DoublylinkedList<T> {
    var head: DoublyLinkedListNode<T>?
    var tail: DoublyLinkedListNode<T>?
    
    func append(_ value: T) {
        let newNode = DoublyLinkedListNode(value: value)
        if head == nil {
            head = newNode
            tail = newNode
            return
        }
        
        tail?.next = newNode
        newNode.previous = tail
        tail = newNode
    }
    
    func printForward() {
        var current = head
        while current != nil {
            print(current!.value, terminator: " <-> ")
            current = current?.next
        }
        print("nil")
    }
}

let doublyList = DoublylinkedList<String>()
doublyList.append("A")
doublyList.append("B")
doublyList.append("C")
doublyList.printForward()
