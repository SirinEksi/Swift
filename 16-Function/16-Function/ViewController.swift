//
//  ViewController.swift
//  16-Function
//
//  Created by Çağdaş Ekşi on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        Örnek1 Fonksiyon çağırma işlemi
        
        yasOrtalamasıHesapla()
        
        //       Örnek2  parametre alan func çağırma işlemi
        
        yasOrtalamasıHesapla(yas1: 20, yas2: 24)
        
        //        örnek3 Geriye değer döndüren fonksyon çağırma işlemi
        
        let result = yasOrtalamasıHesapla(number1: 20, number2: 24)
        print("iki yaşın ortalaması: \(result)")
        
        //        Örnek4 Ekternal parametre alan func işlemi çağırma
        
        hesapla(hesaplamaIslemi: "topla", BırıncıSayı: 10, IkıncıSayı: 10)
        
        hesapla(hesaplamaIslemi: "çarpma", BırıncıSayı: 10, IkıncıSayı: 10)
        
        hesapla(hesaplamaIslemi: "ortalama", BırıncıSayı: 10, IkıncıSayı: 10)
        
        hesapla(hesaplamaIslemi: "çıkarma", BırıncıSayı: 10, IkıncıSayı: 10)
        
        //       Örnek5  Parametre adı kullanılmadan oluşrurulan func çağırma
        
        hesapla("topla", 10, 10)
        
        //        Örnek 6 Geriye birden fazla değer döndüren func çağırma işlemi
        
        let sonuc = hesapla( 10, 10)
        print("toplamı: \(sonuc.toplamı), carpımı: \(sonuc.carpımı), ortalaması: \(sonuc.ortalaması)")
        
        
    }
    
    // Örnek1 Parametre almayan fonksiyon tanımlama
    
    func yasOrtalamasıHesapla() {
        
        let yas1 = 20
        let yas2 = 24
        
        let ort = (yas1 + yas2) / 2
        
        print("iki yaşın ortalaması: \(ort)")
        
    }
    
    //    Örnek2 Parametre alan fonksiyon
    
    func yasOrtalamasıHesapla (yas1: Int, yas2: Int) {
        
        let ort = (yas1 + yas2) / 2
        
        print("iki yaşın ortalaması: \(ort)")
        
        
    }
    
    //    Örnek3 Geriye değer döndüren fonksiyon
    
    func yasOrtalamasıHesapla(number1: Int, number2: Int) -> Int {
        
        let ort = (number1 + number2) / 2
        
        return ort
    }
    
    //    Örnek4 External parametre alan func
    
    func hesapla(hesaplamaIslemi islem:String, BırıncıSayı sayı1:Int, IkıncıSayı sayı2: Int) {
        
        switch islem {
        case "topla" :
            print("toplam: \(sayı1 + sayı2)")
            
        case "çarpma" :
            print("çarpım: \(sayı1 * sayı2)")
            
        case "ortalama" :
            print("ortalaması: \((sayı1 + sayı2) / 2)")
            
        default:
            print("geçersiz işlem")
            
        }
        
        
    }
    
    //    Parametre adı görünmeyen func
    
    func hesapla(_ islem:String, _ sayı1:Int, _ sayı2: Int) {
        
        switch islem {
        case "topla" :
            print("toplam: \(sayı1 + sayı2)")
            
        case "çarpma" :
            print("çarpım: \(sayı1 * sayı2)")
            
        case "ortalama" :
            print("ortalaması: \((sayı1 + sayı2) / 2)")
            
        default:
            print("geçersiz işlem")
            
        }
        
        
    }
    
    //    Örnek6 Birden fazla değer döndüren func
    
    func hesapla(_ sayı1:Int, _ sayı2:Int) -> (toplamı: Int, carpımı: Int, ortalaması: Int) {
        
        let toplamı = sayı1 + sayı2
        let carpımı = sayı1 * sayı2
        let ortalaması = (sayı1 + sayı2) / 2
        
        return(toplamı, carpımı, ortalaması)
        
    }
    
    
    
    
}

