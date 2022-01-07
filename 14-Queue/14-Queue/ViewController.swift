//
//  ViewController.swift
//  14-Queue
//
//  Created by Çağdaş Ekşi on 7.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var q = Queue<String>()
        
        q.enqueue("ada")
        q.enqueue("melis")
        q.enqueue("şirin")
        q.enqueue("çağdaş")
        
        print(q.array)
        print(q.front)
        print(q.rear)
        print(q.count)
        
        print(q.dequeue())
        q.enqueue("nil")
        print(q.array)
        print(q.front)
        print(q.rear)
        print(q.count)
        
    }
    
    
}

struct Queue<T> {
    //    Queue oluşturma
    var array = [T]()
    // Enqueue işlemi
    public mutating func enqueue(_ element: T){
        array.append(element)
        
    }
    
    //    Dequeue ilemi
    public mutating func dequeue() -> T? {
        if isEmpty{
            return nil
        }
        return array.removeFirst()
        
    }
    
    //    Computed property
    
    //    İlk elemanı bulma
    public var front: T?{
        return array.first
        
        
    }
    //    son elemanı bulma
    
    public var rear: T?{
        return array.last
        
        
    }
    
    //    boş kontrolü
    public var isEmpty:Bool {
        return array.isEmpty
        
    }
    
    //    Queue eleman sayısı
    public var count: Int{
        return array.count
        
    }
    
    
    
}

