//
//  Soru.swift
//  Ehliyet Sınav Uygulaması
//
//  Created by Çağdaş Ekşi on 9.03.2022.
//

import Foundation


class Soru  {
    
    var soruTipi : String = ""
    var soru : String = ""
    var cevap1 : String = ""
    var cevap2 : String = ""
    var cevap3 : String = ""
    var cevap4 : String = ""
    var dogruCevap : String = ""
    
    init (soruTipi:String, soru:String, cevap1:String, cevap2:String, cevap3:String, cevap4:String, dogruCevap:String ){
    
    self.soruTipi = soruTipi
    self.soru = soru
    self.cevap1 = cevap1
    self.cevap2 = cevap2
    self.cevap3 = cevap3
    self.cevap4 = cevap4
    self.dogruCevap = dogruCevap
    
    }
    
    
    
}
