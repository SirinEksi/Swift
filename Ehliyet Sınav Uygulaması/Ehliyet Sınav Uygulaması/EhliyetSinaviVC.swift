//
//  EhliyetSinaviVC.swift
//  Ehliyet Sınav Uygulaması
//
//  Created by Çağdaş Ekşi on 9.03.2022.
//

import UIKit

class EhliyetSinaviVC: UIViewController {

    @IBOutlet weak var soru: UITextView!
    @IBOutlet weak var soru1: UIButton!
    @IBOutlet weak var soru2: UIButton!
    @IBOutlet weak var soru3: UIButton!
    @IBOutlet weak var soru4: UIButton!
    
    var tercihler : Tercihler?
    var konuvc = KonularViewController()
    
        var trafikSoruSayisi : Int = 10
        var motorSoruSayisi : Int = 10
        var ilkYardimSoruSayisi : Int = 10
        var dogruCevapSayisi : Int = 0
        var soruNo : Int = 0
        var dogruCevap : Int = 0
        var sorular : [Soru] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        soru.isEditable = false
       
        
       }
    
    func tercihleriOku(){
        let temelTercihListesi : NSDictionary = NSDictionary(contentsOfFile: Bundle.main.path(forResource: "TemelTercihler", ofType: "plist")!)!
        UserDefaults.standard.register(defaults: temelTercihListesi as! [String : AnyObject])
        
        //telefona kaydeder bilgileri.
        let temelTercihler = UserDefaults.standard
        
        let trafikvarmi = temelTercihler.bool(forKey: "trafikVarMi")
        let motorVarMi = temelTercihler.bool(forKey: "motorVarMi")
        let ilkYardimVarMi = temelTercihler.bool(forKey: "ilkYardimVarMi")
        let trafikSorguSayisi = temelTercihler.integer(forKey: "trafikSoruSayisi")
        let motorSoruSayisi = temelTercihler.integer(forKey: "motorSoruSayisi")
        let ilkYardimSoruSayisi = temelTercihler.integer(forKey: "ilkYardimSoruSayisi")
        
        
        tercihler = Tercihler(trafikVarMi: trafikvarmi, motorVarMi: motorVarMi, ilkYardimVarMi: ilkYardimVarMi, trafikSoruSayisi: trafikSorguSayisi, motorSoruSayisi: motorSoruSayisi, ilkYardimSoruSayisi: ilkYardimSoruSayisi)
        
    }
    
    func soruDosyasiOku(){
        var dosyaAdi, dosyaIcerik : String
        var satirlar, soruIcerik: [String]
        var yeniSoru :Soru
        dosyaAdi = Bundle.main.path(forResource: "ehliyet", ofType: "txt")!
        do{
            dosyaIcerik = try String(contentsOfFile: dosyaAdi, encoding: String.Encoding.utf16)
            
        }
        catch{
          dosyaIcerik = ""
            }
        satirlar = dosyaIcerik.components(separatedBy: "\n")
        sorular = []
        
        
        
        
    }
   

}
