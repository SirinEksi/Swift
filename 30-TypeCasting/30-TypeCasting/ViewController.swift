//
//  ViewController.swift
//  30-TypeCasting
//
//  Created by Çağdaş Ekşi on 14.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //   iki string değişkeni Int ve float tipine değiştireceğiz
        let strNumber = "53"
        let srtFloat = "3.180"
        
        
        //   string değişkeni Int tipine değiştirdi
        let  intValue = Int(strNumber)!
        print(intValue)
        
        //   string değişkeni float tiine değiştirdi
        let floatValue = Float(srtFloat)!
        print(floatValue)
        
        //        as, as!, as?
        
        //        as?
        //        ? bu değer nil gelebilir demektir.
        //        x butona dönüştüremediği için nil yazdırır.
        //        y image dönüştürdüğü için optianal biçimde yazırır.
        
        let image =  UIImage()
        let x = image as? UIButton
        let y = image as? UIImage
        print(x)
        print(y)
        
        //        as!
        //        ! unwrapping işlemi ile cast edecek.
        
        let button = UIButton()
        let b = button as! UIButton
        print(b)
        
        //       as
        //       normal atama işlemi yapar
        
        let value = "20"
        
        if let data = value as String? {
            print(data)
            
        }
        
        
    }
    
    
    
}

