//
//  ViewController.swift
//  11-Dictionary
//
//  Created by Çağdaş Ekşi on 7.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //      Dictionary
        //      örnek1
        //      Kişilerin notlarını ve isimlerini tutacak
        //      key value
        
        var noteAndName = [Int: String]()
        
        noteAndName[50] = "Çağdaş"
        print(noteAndName)
        
        //      Dictionary Boş Kontrolü
        
        var someDict1:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        var someDict2:[Int:String] = [4:"Four", 5:"Five"]
        var someDict3:[Int:String] = [Int:String]()
        
        
        print("someDict1 = \(someDict1.isEmpty)")
        print("someDict2 = \(someDict2.isEmpty)")
        print("someDict3 = \(someDict3.isEmpty)")
        
        
        var ulkelerVeBaskentler = ["Türkiye":"Ankara", "Almanya":"Berlin", "Fransa":"Paris"]
        
        //        Sadece keys verilerini alma
        
        let dictKeys = ulkelerVeBaskentler.keys
        
        for key in dictKeys{
            
            print(key)
        }
        
        let dictValues = ulkelerVeBaskentler.values
        
        for value in dictValues{
            
            print(value)
        }
        
        
        //        Hem ülke hemde başkenti birlikte yazdırma
        
        for (key,value) in ulkelerVeBaskentler{
            print("Ülke = \(key), Başkent = \(value)")
            
        }
        
        //        Dictionary de kaç eleman var
        
        print(ulkelerVeBaskentler.count)
        
        //        Dictionaryden bütün elemanları silme
        
        
        //        1. yol
        
        ulkelerVeBaskentler.removeAll()
        print(ulkelerVeBaskentler)
        
        //       2. yol
        
        ulkelerVeBaskentler = [:]
        print(ulkelerVeBaskentler)
        
        //        Key'e göre kayıt güncelleme
        
        ulkelerVeBaskentler["Türkiye"] = "İstanbul"
        print(ulkelerVeBaskentler)
        
        //        Bir eleman çıkarma
        
        ulkelerVeBaskentler.removeValue(forKey: "Fransa")
        print(ulkelerVeBaskentler)
        
     
//        Güvenli şekilde key value almak için (olmayan değeri alamasın yoktur diye uyarı versin)
        
        if let baskent = ulkelerVeBaskentler["Türkiye"] {
            
            print("Türkiyenin başkenti \(baskent)' dır.\(baskent) kalacaktır")
        }else {
            print("Ülke bulunamadı")
            
        }
        
        
        
        
        
    }
    
    
}

