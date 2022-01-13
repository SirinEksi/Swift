//
//  ViewController.swift
//  23-Class
//
//  Created by Çağdaş Ekşi on 13.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let otomobil1 = tasıt()
        otomobil1.hız = 300
        otomobil1.renk = "kırmızı"
        otomobil1.otomatik = true
        otomobil1.yakıt = .dizel
        
        
        let otomobil2 = tasıt()
        otomobil2.hız = 200
        otomobil2.renk = "siyah"
        otomobil2.otomatik = false
        otomobil2.yakıt = .elektrik
        
        otomobil1.tasıtBilgileri()
        otomobil2.tasıtBilgileri()
        
        //       Örnek 2
        let  podcast = Podcast()
        print(podcast.episode.audio)
        
        //        Örnek 3
        
        var sıla = sanatcı(_adı: "sıla", _yas: 20)
        
        print(sıla.adı)
        print(sıla.yas)
        sıla.sarkıSöyle()
        
        //        Örnek 4
        var kare =  Dikdörtgen(kısaKenar: 10, uzunKenar: 10)
        print(kare.alanHesapla())
        print(kare.cevreHesapla())
        
    }
    
    
}

class tasıt {
    
    var hız: Int = 0
    var renk: String = ""
    var otomatik: Bool = false
    var yakıt: yakıtTipi = .bilinmiyor
    
    func tasıtBilgileri() {
        print("hızı: \(hız), renk: \(renk), vites tip: \(otomatik ? "otomatik" : "manuel"), yakıt tipi: \(yakıt)")
        
    }
    
}

enum yakıtTipi {
    
    case benzin,dizel, lpg, elektrik, bilinmiyor
}

//Örnek 2 Class içinde class tanımlama

class Podcast {
    
    lazy var episode = Episode()
}



class Episode {
    
    var audio = "müzik.mp3"
}

//Örnek3

class sanatcı {
    
    var adı: String
    var yas: Int
    
    init(_adı: String, _yas:Int) {
        self.adı = _adı
        self.yas = _yas
        
        
        
    }
    
    func sarkıSöyle() {
        print("lalallalal")
        
        
    }
}

// örnek4

class Dikdörtgen {
    var kısaKenar = 0
    var uzunKenar = 0
    
    
    init(kısaKenar:Int, uzunKenar:Int) {
        print("print çalıştı")
        self.kısaKenar = kısaKenar
        self.uzunKenar = uzunKenar
        
    }
    
    func alanHesapla() -> Int {
        return kısaKenar * uzunKenar
        
        
    }
    
    func cevreHesapla() -> Int {
        return 2 * (kısaKenar * uzunKenar)
    }
    
}



