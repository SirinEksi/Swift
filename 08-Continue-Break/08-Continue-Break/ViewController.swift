//
//  ViewController.swift
//  08-Continue-Break
//
//  Created by Çağdaş Ekşi on 6.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //        örnek1
        //        Continue
        //       10 a kadar dönen döngü
        //        3 e eşitse bir sonraki elemana geçsin,3 rakamını yazdırmasın.
        
        for num in 0...10 {
            
            if num == 3{
                continue
                
            }
            
            print("sayı: \(num)")
        }
        
        //        örnek2
        //        teksayıları yazdır, çift sayıları yazdırma
        
        for n in 0...10{
            
            if n % 2 == 0{
                continue
            }
            
            print("\(n) sayısı tek sayıdır.")
        }
        
//        Break
//        örnek1
        
        for num in 0...10 {
            
            if num == 3{
               break
                
            }
            
            print("sayı: \(num)")
        }
        
//        örnek2
        
        let names = ["cagdas" , "sirin", "melis"]
        
        for name in names {
            
            if name == "sirin" {
                break
            }
            
            print(name)
        }
        
        
    }
    
    
    
}

