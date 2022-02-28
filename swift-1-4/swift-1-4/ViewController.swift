//
//  ViewController.swift
//  swift-1-4
//
//  Created by Çağdaş Ekşi on 28.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
// FONKSYONLAR
//Fonksyon ismi geçerli herhangi bir isim olabilir.Döndürülen-değer-tipi fonksyonu çağıran komuta döndürülen sonucun veri tipidir.
//Fonksyon herhangi bir değer döndürmüyorsa -> kısmından itibaren hiçbir şey yazılmaz.
//Tanımlar ve komutlar birlikte fonksyonun esasını oluşturur.Bir fonksyon başka bir fonksyonun içinde tanımlanamaz.
//Parametre listesi virgül ile ayrılmış bir liste olup fonksyonun parametre tanımlarını içerir.Fonksyonun herhangi bir parametresi yoksa
//parametre listesi boş geçilir.
//Fonksyonun sonunda Return komutu çalıştırıldığı zaman program başa döner.

func yasOrtalamasıHesapla() {
        
        let yas1 = 20
        let yas2 = 24
        
        let ort = (yas1 + yas2) / 2
        
        print("iki yaşın ortalaması: \(ort)")
        
    }
    
func hesapla(_ sayı1:Int, _ sayı2:Int) -> (toplamı: Int, carpımı: Int, ortalaması: Int) {
        
        let toplamı = sayı1 + sayı2
        let carpımı = sayı1 * sayı2
        let ortalaması = (sayı1 + sayı2) / 2
        
        return(toplamı, carpımı, ortalaması)
        
    }
    
    

