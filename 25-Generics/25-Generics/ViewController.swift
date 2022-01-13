//
//  ViewController.swift
//  25-Generics
//
//  Created by Çağdaş Ekşi on 13.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var username = "sirin"
        var password = "1234"
        
        
        print("username: \(username), password: \(password)")
        
        swap(item1: &username, item2: &password)
        
        print("username: \(username), password: \(password)")
        
        var number1 = 1111
        var number2 = 2222
        
        
        print("number1: \(number1), number2: \(number2)")
        
        swap(item1: &number1, item2: &number2)
        
        print("number1: \(number1), number2: \(number2)")
        
        
        var number3 = 20.99
        var number4 = 22.99
        
        print("number3: \(number3), number4: \(number4)")
        
        swap(item1: &number3, item2: &number4)
        
        print("number3: \(number3), number4: \(number4)")
        
        
    }
    
    // Örnek yer değiştirme methodu(string ve Int için)
    
    func swap(item1: inout String, item2: inout String) {
        
        let temp = item1
        item1 = item2
        item2 = temp
        
        
    }
    func swap(item1: inout Int, item2: inout Int) {
        
        let temp = item1
        item1 = item2
        item2 = temp
        
        
    }
    func swap(item1: inout Double, item2: inout Double) {
        
        let temp = item1
        item1 = item2
        item2 = temp
        
        
    }
    func swap<T>(item1: inout T, item2: inout T) {
        
        let temp = item1
        item1 = item2
        item2 = temp
        
        
    }
    
}
