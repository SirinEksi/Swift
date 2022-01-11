//
//  ViewController.swift
//  21- Init-Deinit
//
//  Created by Çağdaş Ekşi on 11.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let derece = Derece()
        print("default sıcaklık derecesi \(derece.sıcaklık)")
        
        //        Deinit kullanımı
        
        var new:örnekSınıf? = örnekSınıf()
        
        print("init çalıştı mı ")
        
        new = nil
        print("deinit çalıştı mı?")
        
        var newP: örnekSınıf? = örnekSınıf(_a: 10)
        print("parameetreli versşyonu çalıştı mı")
        
        newP = nil
        print("p.deinit çalıştı mı")
        
        
        
    }
    
    
}

struct Derece {
    var sıcaklık: Double
    init() {
        sıcaklık = 22.0
    }
    
}

class örnekSınıf {
    
    var a: Int
    init() {
        a = 0
        print("default init çalıştı")
        
    }
    
    init(_a: Int) {
        self.a = _a
        print("parametre alan init çalıştı")
        
    }
    
    deinit{
        print("deinit çalıştı")
        
    }
}




