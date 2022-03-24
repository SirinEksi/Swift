//
//  Tercihler.swift
//  Ehliyet Sınav Uygulaması
//
//  Created by Çağdaş Ekşi on 9.03.2022.
//

import Foundation

class Tercihler{
    
    var trafik : Bool = true
    var motor : Bool = true
    var ilkYardim : Bool = true
    var trafikSoruSayisi : Int = 10
    var motorSoruSayisi : Int = 10
    var ilkYardimSoruSayisi : Int = 10
    
    init( trafikVarMi: Bool, motorVarMi: Bool, ilkYardimVarMi: Bool, trafikSoruSayisi : Int, motorSoruSayisi : Int, ilkYardimSoruSayisi : Int){
        
        self.trafik = trafikVarMi
        self.motor = motorVarMi
        self.ilkYardim = ilkYardimVarMi
        self.trafikSoruSayisi = trafikSoruSayisi
        self.motorSoruSayisi = motorSoruSayisi
        self.ilkYardimSoruSayisi = ilkYardimSoruSayisi
        
        
        
        
        
    }
    
    
    
}


