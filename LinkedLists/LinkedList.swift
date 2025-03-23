import UIKit

// Linked List
class ListNode<T> {
    var value: T
    var next: ListNode<T>?
    
    init(value: T) {
        self.value = value
        self.next = nil
    }
}

class LinkedList<T> {
    var head: ListNode<T>?
    
    func append(_ value: T) {
        let newNode = ListNode(value: value)
        if head == nil {
            head = newNode
            return
        }
        
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = newNode
    }
    
    func printList() {
        var current = head
        while current != nil {
            print(current!.value, terminator: " -> ")
            current = current?.next
        }
        print("nil")
    }
}


let list = LinkedList<Int>()
list.append(10)
list.append(20)
list.append(30)
list.printList()
