//
//  ViewController.swift
//  10-Set
//
//  Created by Çağdaş Ekşi on 6.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        Boş set oluşturma
        
        var meyveler = Set<String>()
        
        //        Boş kontrolü
        
        if meyveler .isEmpty{
            print("meyve bulunamadı")
            
        }
        
        //       Set eleman ekleme
        
        meyveler.insert("Elma")
        meyveler.insert("Çilek")
        meyveler.insert("Üzüm")
        
        
        //      Set eleman sayısı bukma
        
        print(meyveler.count)
        
        
        //      Setlerde eleman silme
        
        meyveler.remove("Elma")
        
        print(meyveler)
        
        
        //        Set contains fonksyonu (içinde aranan elamn varmı yokmu sorgulanır) true yada false olarak döner
        
        if meyveler.contains("Elma"){
            
            print("Elma var")
        }else {
            
            meyveler.insert("Elma")
        }
        
        print(meyveler)
        
        //        for döngüsü kullanma
        
        for meyve in meyveler {
            print(meyve)
        }
        
        //    setlerde 4 temel işlem var
        //        1. intersection = kesişim
        //        2. symetricDifference = simetri farkı
        //        3.union = birleşim
        //        4. subtracting = farkını alma
        
        //        intersection
        
        let oddDigits:Set = [1,3,5,7,9,100]
        let evenDigits:Set  = [2,4,6,8,100]
        
        print(oddDigits.intersection(evenDigits))
        
        //        symetricDifference
        
        print(oddDigits.symmetricDifference(evenDigits))
        
        //        union
        
        print(oddDigits.union(evenDigits))
        
        //        subtracting
        
        print(oddDigits.subtracting(evenDigits))
        
        //        Set Membership ve Equality = Kümelerde üyelik ve eşitlik durumları
        
        //        1.isSubset : bir kümedeki tüm değerlerin bir başka kğmede olup olmadığını gösterir.
        //        2.isSuperset : bir kümenin diğer kümeyi kapsayıp kapsamadığını gösterir
        //        3.İsDisjoint : iki kümenin ortak elemanları olup olmadığını gösterir
        
        let houseAnimals:Set = ["🐶", "🐈", "🐦"]
        let farmAnimals:Set = ["🐮", "🐝", "🐴", "🐶", "🐈", "🐦"]
        let cityAnimals:Set = ["🪱","🐠"]
        
        
        //        örnek1
        
        //        Ev hayvanları çiftlik hayvanlarının bir alt kümesi mi
        
        if houseAnimals.isSubset(of: farmAnimals) {
            print("ev hayvanları, çiftlik hayvanlarının alt kümesidir")
        }
        
        //        örnek 2
        //        çiftlik hayvanları ev hayvanlarını kapsıyor mu
        
        
        if farmAnimals.isSuperset(of: houseAnimals) {
            print("çiftlik hayvaları ev hayvanlarını kapsıyor")
        }
        
        //        örnek3
        //        iki kümenin birbirinden farklı değerleri var mı
        
        if cityAnimals.isDisjoint(with: houseAnimals){
            print("ortak elemanları bulunmuyor")
        }
        
        
        
        
    }
    
    
}

