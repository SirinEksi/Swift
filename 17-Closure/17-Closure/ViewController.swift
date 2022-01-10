//
//  ViewController.swift
//  17-Closure
//
//  Created by Çağdaş Ekşi on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //         Func çağırma işlemi
        
        let resultFunc = topla(10, 10)
        print("toplam: \(resultFunc)")
        
        
        //         closure tanımlama işlemi
        
        var resultClosure: (Int, Int) -> Int = { sayı1, sayı2  in
            return sayı1 + sayı2
            
        }
        
        let toplam = resultClosure(10,10)
        print("taplam: \(toplam)")
        
        //        Closure Kısa kullanımı
        
        var kısaTopla: (Int,Int) -> Int = {
            return $0 + $1
            
        }
        
        print("toplam: \(kısaTopla(10,10))")
        
    }
    
    //    Func olarak kullanımı
    
    func topla(_ sayı1: Int, _ sayı2: Int) -> Int {
        
        return sayı1 + sayı2
    }
    
    
    
    
    
    

}

