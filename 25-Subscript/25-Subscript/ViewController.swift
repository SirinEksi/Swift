//
//  ViewController.swift
//  25-Subscript
//
//  Created by Çağdaş Ekşi on 12.01.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       let result = hesapla(carpma: 3)
        print("6 kere 3 = \(result[6])")
        
        let event = Event()
        print("3. Index değeri: \(event[2])")
        
        
    }


}

struct hesapla {
    let carpma: Int
    
    subscript (satırsayısı:Int) -> Int {
        return carpma * satırsayısı
        
    }
    
}

struct Event {
    var events = ["Futbol", "Basketbol", "Voleybol", "Atletizm"]
    
    subscript(eventIndex: Int) -> String {
        get {
        return events[eventIndex]
        
        }
        set(newValue) {
            events[eventIndex] = newValue
            
        }
        
    }
    
}

