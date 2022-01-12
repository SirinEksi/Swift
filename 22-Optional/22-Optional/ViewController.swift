//
//  ViewController.swift
//  22-Optional
//
//  Created by Çağdaş Ekşi on 12.01.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var benimAdim = "Şirin"
        var beniIkinciAdım: String? = "Melis"
        var benimSoyAdım = "Ekşi"
        
//        Değerleri sil
        
//        benimAdim = nil
//        beniIkinciAdım = nil
//        benimSoyAdım = nil
        
     
        if let beniIkinciAdım = beniIkinciAdım {
            print("Adım: \(benimAdim), ikinci Adım: \(beniIkinciAdım), soyadım: \(benimSoyAdım)")
        }
        
     
        
        
    }


}

