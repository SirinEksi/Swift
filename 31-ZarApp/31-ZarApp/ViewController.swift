//
//  ViewController.swift
//  31-ZarApp
//
//  Created by Çağdaş Ekşi on 17.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var left: UIImageView!
    @IBOutlet weak var right: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
    let items = [UIImage(named: "dice1"), UIImage(named: "dice2"), UIImage(named: "dice3"), UIImage(named: "dice4"), UIImage(named: "dice5"),UIImage(named: "dice6")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func btn(_ sender: Any) {

        //     rastgele sayı atma kodu
        
        let birinciZar = Int(arc4random_uniform(6))
        let ikinciZar = Int(arc4random_uniform(6))
        
//        çıkan sayıları resimlere verme
        
        left.image = items[birinciZar]
        right.image = items[ikinciZar]
        
        lbl.text = "birinci zar: \(birinciZar), ikinci zar: \(ikinciZar)"
        
            
        }
        
    }
    


