//
//  ViewController.swift
//  20-Inheritance
//
//  Created by Çağdaş Ekşi on 11.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kopek  = Kopek()
        kopek.sesCıkar()
        
        let kedi = Kedi()
        kedi.sesCıkar()
        
        //        miras alan bir class dan miras alma
        
        let Kurt = Kurt()
        Kurt.sesCıkar()
        
        
    }
    
    
}
//Base class

class Hayvan {
    func sesCıkar() {
        
        
    }
    
}

class Kopek: Hayvan {
    override func sesCıkar() {
        print("Hav Hav")
    }
    
}

class Kedi: Hayvan{
    override func sesCıkar() {
        print("miyav miyav ")
    }
    
}

class Kurt: Kopek{
    override func sesCıkar() {
        print("uuuuuuuuuv")
    }
    
}


