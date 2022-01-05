//
//  ViewController.swift
//  07-For-While
//
//  Created by Çağdaş Ekşi on 5.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(1)
        print(2)
        print(3)
        print(4)
        print(5)
        print(6)
        print(7)
        print(8)
        print(9)
        print(10)
        
        for number in 1...10 {
            print(number)
        }
        
        for _ in 1...10 {
            print("Melis")
            
        }
        
        let days = ["Pazartesi" , "Salı" , "Çarşamba" , "Perşembe" , "Cuma" , "Cumartesi" , "Pazar"]
        
        for day in days {
            print("Günler: \(day)")
            
        }
        
        let dayArray = ["Pazartesi":1 , "Salı":2 , "Çarşamba":3 , "Perşembe":4 , "Cuma":5 , "Cumartesi":6 , "Pazar":7]
        
        for (dayName, dayNumber) in dayArray {
            
            print("Gün adı: \(dayName), Gün: \(dayNumber) ")
        }
        
        var total = 0
        
        for number in 0...100 {
            total = total + number
            
        }
        print("Toplam sayı: \(total)")
        
//      WHILE
        
        var number = 1
        
        while number < 10{
            print(number)
            number += 1
            
        }
        
//     REPEAT WHILE
//        Bir kere çalışan döngü tanımı
        let myAge = 30
        
        repeat {
            print("Benim yaşım \(myAge)")
            
        } while myAge > 30
        
//      Koşulu sağlayana kadar dönen döngü tanımı
//        10 dan küçük olan sayıları yazdıran döngü
    
        var n = 0
        
        repeat{
            n += 1
            print("sayı: \(n)")
            
        } while n < 10
        
    }
    
    
    
    
    
    
    
    
}

