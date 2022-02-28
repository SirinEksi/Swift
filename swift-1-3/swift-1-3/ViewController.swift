//
//  ViewController.swift
//  swift-1-3
//
//  Created by Çağdaş Ekşi on 28.02.2022.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        //    DÖNGÜLER
        //   Döngü yapıları
        //   Bir döngü,bilgisayarın belirli bir döngü devam koşulu sağlandığı sürece tekrarladığı komutlar grubudur.
        //   Sayaç kontrollü ve Koşul kontrollü olmak üzere iki grubudur.
            
        //    WHILE DÖNGÜSÜ; bu yapıda ilk koşul değerlendirilir.Koşul doğruysa komutlar çalıştırılır ve koşul tekrar değerlendirilir.
        //    Tekrarlama koşulun yanlış olana kadar devam eder; bu noktada program döngünün arkasından çalışmaya devam eder.
          
            var toplam : Int = 0, sayac : Int = 1
             while (sayac <= 10) {
                toplam += sayac
                sayac = sayac + 1
            
                 print(sayac)
                 print(toplam)
                 
             }
        
//        FOR DÖNGÜSÜ
        
        var total = 0
                
                for number in 0...100 {
                    total = total + number
                    
                }
                print("Toplam sayı: \(total)")
        
//        REPEAT WHILE DÖNGÜSÜ
//        Bir kere çalışan döngü tanımı
        
        var index = 10

        repeat {
           print( "Value of index is \(index)")
           index = index + 1
        } while index < 20
        
//      CONTİNUE VE BREAK
//      Break komutu for,while ve repeat while döngülerinden erken çıkmayı sağlar.Birden çok döngü olduğunda ise break komutu hangi döngünün
//        içindeyse o döngüden hemen çıkar.
//        Continue  komutu o anda içinde bulunduğu for,while ve repeat while döngülerinin bir sonraki tekrarına programı yönlendirir.
//        while ve repeat while döngülerinde bu sınama kısımlarının hemen çalıştırılmasına neden olur.
        
        for num in 0...10 {
                    
                    if num == 3{
                        continue
                        
                    }
                    
                    print("sayı: \(num)")
                }
        
        
        }


}
