//
//  Bulmaca.swift
//  Piramit
//
//  Created by Çağdaş Ekşi on 3.03.2022.
//

import Foundation


class Bulmaca {
    
    fileprivate var sayilar : [[Int]] = []
    fileprivate var oynama : [Int] = []
    var buyukluk : Int = 0
    
    init (bulmacaBilgisi : String){
        var i , j, k: Int
        buyukluk = Int(sqrt(Double(2 * bulmacaBilgisi.utf16.count)))
        k = 0
        for i in 0..<buyukluk{
            oynama.append(-1)
            var satir : [Int] = []
            for _ in 0...i{
                satir.append(Int(String(Array(bulmacaBilgisi)[k]))!)
                k += 1
            }
            sayilar.append(satir)
            
            
            
        }
    }
    
    func sayi(satir:Int, sutun:Int) -> Int{
        return sayilar [satir][sutun]
    }
    
    func oynananDeger(satir:Int) -> Int{
        return oynama[satir]
    }
    func oyna(satir : Int, deger:Int){
        oynama[satir] = deger
    }
    
    
}
