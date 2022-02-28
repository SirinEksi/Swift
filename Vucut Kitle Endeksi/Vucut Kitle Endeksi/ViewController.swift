//
//  ViewController.swift
//  Vucut Kitle Endeksi
//
//  Created by Çağdaş Ekşi on 1.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var boyLbl: UILabel!
    @IBOutlet weak var kiloLbl: UILabel!
    @IBOutlet weak var vkeLabel: UILabel!
    @IBOutlet weak var durumLbl: UILabel!
    
    @IBOutlet weak var boyText: UITextField!
    @IBOutlet weak var kiloText: UITextField!
    @IBOutlet weak var vkeText: UITextField!
    
    private var boy: Double = 0.0
    private var kilo: Double = 0.0
    private var vucutKitleEndeks: Double = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        vkeText.isEnabled = false
        
        // Do any additional setup after loading the view.
    }

    @IBAction func kiloDegerIzleyici(_ sender: UITextField) {
        
        if let girilenKilo =  kiloText.text {
            kilo = atof(girilenKilo)
            sonucGoster()
        }
        
        
    }
    
    @IBAction func boyDegerIzleyici(_ sender: UITextField) {
        if let girilenBoy = boyText.text {
            boy = atof(girilenBoy)
            sonucGoster()
            
        }
        
        
    }
    
    func sonucGoster() {
        vucutKitleEndeks = (kilo / (boy * boy)) * 10000
        vkeText.text = String(format: "%.2f", vucutKitleEndeks)
        durumLbl.text = ""
        print(vucutKitleEndeks)
        if vucutKitleEndeks < 20 {
            durumLbl.text = "Zayıf"
            
        }else {
            if vucutKitleEndeks < 25 {
                durumLbl.text = "Normal"
            }else {
                if vucutKitleEndeks < 30 {
                    durumLbl.text = "Hafif Şişman"
                }else {
                    if  vucutKitleEndeks < 35{
                        durumLbl.text = "Şişman"
                    }else {
                        if vucutKitleEndeks < 45 {
                            durumLbl.text = "Önemli Derecede Şişman"
                        }else {
                            if vucutKitleEndeks < 50 {
                                durumLbl.text = "Aşırı Şişman"
                            }else {
                                durumLbl.text = "Ölümcül Şişman"
                            }
                        }
                    }
                }
            }
            
        }
        
        
        
        
    }
    
}

