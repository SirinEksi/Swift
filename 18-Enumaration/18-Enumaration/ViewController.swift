//
//  ViewController.swift
//  18-Enumaration
//
//  Created by Çağdaş Ekşi on 11.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bugun = Gunler.Cumartesi
        
        print(bugun)
        
        //        switch case ile kullanma
        
        switch bugun {
        case .Pazartesi:
            print("Haftanın ilk iş günü")
        case .Salı:
            print("Haftanın ikinci iş günü")
        case .Cuma:
            print("Yarın tatil")
        case .Cumartesi:
            print("Hafta sonu")
        case .Pazar:
            print("Yarın iş var ")
            
        default:
            print("belli bir gün değil")
        }
        
        //         raw value property okuma işlemi
        
        let dunyanınSırası = gezegenler.dünya.rawValue
        print("dunyanın sırası: \(dunyanınSırası)")
        
        
    }
    
}

// Örnek1 Haftanın günlerinin tanımlanması

enum Gunler {
    
    case Pazartesi
    case Salı
    case Carsamba
    case Persembe
    case Cuma
    case Cumartesi
    case Pazar
    
}
// Kısa tanımlama şekli

enum GunlerKısa {
    
    case Pazartesi, Salı, Carsamba, Persembe, Cuma, Cumartesi, Pazar
}

// Enum satır değerleri

enum gezegenler: Int{
    case merkur = 1, dünya, saturn, venus, jupiter, uranus, naptun
    
    
}





