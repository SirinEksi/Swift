//
//  ViewController.swift
//  27-Extension
//
//  Created by Çağdaş Ekşi on 13.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let result = 10.kareExtension()
        print(result)
        
        //         örnek 2 tanımlaması
        
        let str = " cagdas eksi " .trim()
        print(str)
        
    }
    
}

//Örnek 1: Int değerinin karesini alan bir extension yaz.



extension Int{// mevcut Int değerinde olmayan bir özellik ile genişletilecek
    
    func kareExtension() -> Int {
        return self * self
        
    }
}
//Örnek2 strıng değer içindeki fazlalık boşlukları temizlesin

extension String {
    func trim() -> String {
        return self.trimmingCharacters(in: .whitespaces)
        
    }
    
    
}
