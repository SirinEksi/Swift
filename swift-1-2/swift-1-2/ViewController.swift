//
//  ViewController.swift
//  swift-1-2
//
//  Created by Çağdaş Ekşi on 28.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//  KOŞULLU YAPILAR
            
        //    1. If- Else
            
        //    Komutun else kısmı opsiyoneldir.Kullanılmayabilir.Önce koşul değerlendirilir,eğer koşul doğru ise blok1 çalıştırılır.Koşul yanlış ise ve bir else kısmı var ise blok2 çalıştırılır.Her blok bir satır yada bir grup kod bloğundan oluşabilir.
            
        var x = 0
        var y = 0
        var z = 0
        var ay = Int()
        var gun = Int()
        
        
        
            if (x == 4){
                y = y + 1
                z += y
                }
            
        
        //    ELSE - IF

        //     Bu ardışık if komutları çok yönlü koşul mekanizmasını yazmanın en genel yoludur.İfadeler,görülen sırada değerlendirilir, herhangi bir ifade doğru ise o ifade ile ilişkilendirilmiş komutlar çalıştırılır ve tüm ardışık if komut zinciri sonlandırılır.En son else kısmı ise hiçbiri veya varsayılan değer durumuna karşılık verir.
        
//        if (ifade1){
//         blok1
//          }else if(ifade2){
//            blok2
//              }else if(ifade3){
//                 blok3
//                  }
//                    ...
//                      }else{
//                         blok7
//                           }
        
       //     SWITCH
//        Switch komutu çok yönlü koşul olup bir ifadenin verilen bir grup sabit tamsayı değerinden hangisini aldığını belirler ve buna göre            dallanır.Default opsiyoneldir,kullanılmayabilir.
        
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM"
        let nameOfMonth = dateFormatter.string(from: now)

        ay = 2
        
        if ((ay == 4 || ay == 6 || ay == 9 || ay == 11)) {
            gun = 30
        }else if  ay == 2 {
            gun = 28
        } else {
            gun = 31
        }
        print(gun)
        
        switch (ay){
        case 4,6,9,11:
             gun = 30
        case 2:
              gun = 28
        default:
            gun = 31
            
            print("ay: \(gun)")
            
            
            }
        
        
        
        
        
    }

}

