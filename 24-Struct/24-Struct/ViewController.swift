//
//  ViewController.swift
//  24-Struct
//
//  Created by Çağdaş Ekşi on 14.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kareClass = Dikdörtgen1(kısaKenar: 10, uzunKenar: 10)
        print(kareClass.cevreHesapla())
        print(kareClass.alanHesapla())
        
        let kareStruct = Dikdörtgen2(kısaKenar: 10, uzunKenar: 10)
        print(kareStruct.alanHesapla())
        print(kareStruct.cevreHesapla())
        
        
        //   Value type struct özelliği
        var point1 = PointStruct(x: 10, y: 1)
        var point2 = point1
        print(point1.x)
        print(point2.x)
        
        point1.x = 1000
        print(point1.x)
        print(point2.x)
        //      (struct durumunda sadece point1 x i değiştirdi, point2 x eski değerinde kaldı)
        
        //   class ile yapılanın özelliği
        
        var pointClass1 = PointClass(x: 10, y: 1)
        var pointClass2 = pointClass1
        
        print(pointClass1.x)
        print(pointClass2.x)
        
        
        pointClass1.x = 1000
        print(pointClass1.x)
        print(pointClass2.x)
        //      (bu durumda point1 x i değiştirmemize rağmen point2 x de değişti yani kopyaladı )
    }
    
    
}
class Dikdörtgen1 {
    var kısaKenar = 0
    var uzunKenar = 0
    
    
    init(kısaKenar:Int, uzunKenar:Int) {
        print("init çalıştı")
        self.kısaKenar = kısaKenar
        self.uzunKenar = uzunKenar
        
    }
    
    func alanHesapla() -> Int {
        return kısaKenar * uzunKenar
        
        
    }
    
    func cevreHesapla() -> Int {
        return 2 * (kısaKenar + uzunKenar)
    }
    
}
struct Dikdörtgen2 {
    var kısaKenar = 0
    var uzunKenar = 0
    
    
    func alanHesapla() -> Int {
        return kısaKenar * uzunKenar
        
        
    }
    
    func cevreHesapla() -> Int {
        return 2 * (kısaKenar + uzunKenar)
    }
    
}

struct PointStruct {
    var x = 0
    var y = 0
    
    
}
class PointClass {
    var  x = 0
    var  y = 0
    
    init(x:Int, y:Int) {
        self.x = x
        self.y = y
        
    }
    
}


