//
//  ViewController.swift
//  Hesap Makinesi
//
//  Created by Çağdaş Ekşi on 2.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var oncekiSayı: Int = 0
    private var sayi: Int = 0
    private var hafiza: Int = 0
    private var oncekiIslem: Character = "="
    @IBOutlet weak var sonuc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sonuc.isEnabled = false
        
    }
    
    @IBAction func dugme1Tıkla(_ sender: UIButton) {
        sayiEkle(rakam: 1)
        
    }
    @IBAction func dugme2Tıkla(_ sender: UIButton) {
        sayiEkle(rakam: 2)
    }
    @IBAction func dugme3Tıkla(_ sender: UIButton) {
        sayiEkle(rakam: 3)
    }
    @IBAction func dugme4Tıkla(_ sender: UIButton) {
        sayiEkle(rakam: 4)
    }
    @IBAction func dugme5Tıkla(_ sender: UIButton) {
        sayiEkle(rakam: 5)
    }
    @IBAction func dugme6Tıkla(_ sender: UIButton) {
        sayiEkle(rakam: 6)
    }
    @IBAction func dugme7Tıkla(_ sender: UIButton) {
        sayiEkle(rakam: 7)
    }
    @IBAction func dugme8Tıkla(_ sender: UIButton) {
        sayiEkle(rakam: 8)
    }
    @IBAction func dugme9Tıkla(_ sender: UIButton) {
        sayiEkle(rakam: 9)
    }
    @IBAction func dugme0Tıkla(_ sender: UIButton) {
        sayiEkle(rakam: 0)
    }
    @IBAction func dugmeArtıTıkla(_ sender: UIButton) {
        islemYap(islem: "+")
    }
    @IBAction func dugmeEksiTıkla(_ sender: UIButton) {
        islemYap(islem: "-")
    }
    @IBAction func dugmeCarpıTıkla(_ sender: UIButton) {
        islemYap(islem: "*")
    }
    @IBAction func dugmeBoluTıkla(_ sender: UIButton) {
        islemYap(islem: "/")
    }
    @IBAction func dugmeEsitTıkla(_ sender: UIButton) {
        islemYap(islem: "=")
        sayi = oncekiSayı
        oncekiSayı = 0
    }
    
    @IBAction func dugmeSilTıkla(_ sender: UIButton) {
        sayi = 0
        ekrandaGoster(sayi: sayi)
    }
    @IBAction func dugmeHafızayaEkle(_ sender: UIButton) {
        hafiza += sayi
        sayi = 0
    }
    @IBAction func dugmeHafızadanCıkar(_ sender: UIButton) {
        hafiza -= sayi
        sayi = 0
    }
    @IBAction func dugmeHafızayıGoster(_ sender: UIButton) {
        sayi = hafiza
        ekrandaGoster(sayi: sayi)
    }
    @IBAction func dugmeHafızadanSilTıkla(_ sender: UIButton) {
        hafiza = 0
    }
    
    
    func ekrandaGoster(sayi: Int){
        sonuc.text = String(format: "%d", sayi)
    }
    
    func sayiEkle(rakam: Int){
        sayi = sayi * 10 + rakam
        ekrandaGoster(sayi:sayi)
        
    }
    
    func islemYap(islem: Character){
        switch(oncekiIslem){
        case "+" :oncekiSayı = oncekiSayı + sayi
        case "-" : oncekiSayı = oncekiSayı - sayi
        case "*" : oncekiSayı = oncekiSayı * sayi
        case "/" :if (sayi != 0) {
            oncekiSayı = oncekiSayı / sayi
        }
        case "=" : oncekiSayı = sayi
        default : break
        }
        oncekiIslem = islem
        sayi = 0
        ekrandaGoster(sayi: oncekiSayı)
        
        
    }
    
}

