//
//  ViewController.swift
//  09-Array
//
//  Created by Çağdaş Ekşi on 6.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //        Boş array tanımlama
        
        var meyveler = [String]()
        var yıllar = [String]()
        
        //        Boş kontrolü
        
        if meyveler.isEmpty {
            print("meyve bulunamadı")
        }
        
        if yıllar.isEmpty {
            print("yıl bulunamadı")
            
        }
        
        //        Array eleman ekleme
        
        meyveler.append("elma")
        meyveler.append("armut")
        meyveler.append("çilek")
        
        yıllar.append("2022")
        yıllar.append("2021")
        yıllar.append("2019")
        
        //        Array eleman sayısı bulma
        
        print("meyve sayısı: \(meyveler.count)")
        print("yıl sayısı: \(yıllar.count)")
        
        //        Array ilk elemanı al
        
        let ilkMeyve = meyveler.first
        
        //       Array son eleman al
        
        let sonMeyve = meyveler.last
        
        print("ilk meyve = \(ilkMeyve!) | son meyve = \(sonMeyve!)")
        
        
        //      Array ikinci elemanı yazdırma
        
        print(meyveler[1])
        print(yıllar[1])
        
        
        //        Array eleman silme
        
        meyveler.remove(at: 2)
        print("meyve sayısı: \(meyveler.count)")
        
        //        Array sıralama
        
        print("sıralama yapılmamış array: \(yıllar)")
        print("sıralanmış array: \(yıllar.sorted())")
        
        //      örnek 2000 li doğum yılı elemanların altını bize getirir.
        
        let yaslar = [1996,1997,1995,2000,2005,2019]
        
        //        filtre
        
        let filtre = yaslar.filter{$0 < 2000}
        
        print("2000 den küçük olanlar: \(filtre.sorted())")
        
        //        contains
        //        True yada False döner
        
        var ilceler = ["Çekmeköy", "Beşiktaş", "Kadıköy", "Ümraniye"]
        
        if  ilceler.contains("okmeydanı") == false{
            print("Okmeydanı dizide mevcut değil")
            ilceler.append("Okmeydanı")
        }
        
        if ilceler.contains("Çekmeköy") == false {
            print("Çekmeköy dizide mevcut deği")
            ilceler.append("Çekmeköy")
            
        }
        
        if ilceler.contains("Maltepe") == false{
            print("Maltepe dizide mevcut değil")
            ilceler.append("Maltepe")
            
        }
        
        print(ilceler)
        
    }
    
    
}

