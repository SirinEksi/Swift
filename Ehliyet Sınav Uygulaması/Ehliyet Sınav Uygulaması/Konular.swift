//
//  Konular.swift
//  Ehliyet Sınav Uygulaması
//
//  Created by Çağdaş Ekşi on 9.03.2022.
//

import Foundation
import UIKit

class Konular: UIViewController {
    
    @IBOutlet weak var trafikSayaci: UILabel!
    @IBOutlet weak var motorSayaci: UILabel!
    @IBOutlet weak var ilkYardimSayaci: UILabel!
    @IBOutlet weak var trafikStepper: UIStepper!
    @IBOutlet weak var motorStepper: UIStepper!
    @IBOutlet weak var ilkYardimStepper: UIStepper!
    @IBOutlet weak var trafikSwitch: UISwitch!
    @IBOutlet weak var motorSwitch: UISwitch!
    @IBOutlet weak var ilkYardimSwitch: UISwitch!
    
    var tercihler : Tercihler?
    
    override func viewDidLoad(){
        super.viewDidLoad()
            if let _tercihler = tercihler{
                trafikSwitch.isOn = ((tercihler?.trafik) != nil)
                motorSwitch.isOn = ((tercihler?.motor) != nil)
                ilkYardimSwitch.isOn = ((tercihler?.ilkYardim) != nil)
                trafikStepper.value = Double(_tercihler.trafikSoruSayisi)
                motorStepper.value = Double(_tercihler.motorSoruSayisi)
                ilkYardimStepper.value = Double(_tercihler.ilkYardimSoruSayisi)
                
            }
            
            trafikSayaci.text = String(format: "%d", Int(trafikStepper.value))
            motorSayaci.text = String(format: "%d", Int(motorStepper.value))
            ilkYardimSayaci.text = String(format: "%d", Int(ilkYardimStepper.value))
        
        }
    
        func konuTikla(sender: UISwitch){
                var temelTercihler = UserDefaults.standard
                switch(sender.tag){
                case 1: temelTercihler.set(trafikSwitch.isOn, forKey:"trafikVarMi")
                case 2: temelTercihler.set(motorSwitch.isOn, forKey: "motorVarMi")
                case 3: temelTercihler.set(ilkYardimSwitch.isOn, forKey: "ilkYardimVarMi")

                default:
                break
        }

        func konuDegerDegistir(sender : UIStepper){
            var temelTercihler = UserDefaults.standard
            switch(sender.tag){
            case 1: temelTercihler.set(Int(trafikStepper.value), forKey: "trafikSoruSayisi")
                trafikSayaci.text = String(format: "%d", trafikStepper.value)
            case 2: temelTercihler.set(Int(motorStepper.value), forKey: "motorVarMi")
                motorSayaci.text = String(format: "%d", motorStepper.value)
            case 3: temelTercihler.set(Int(ilkYardimStepper.value), forKey: "ilkYardimVarMi")
                ilkYardimSayaci.text = String(format: "%d", ilkYardimStepper.value)
                
            default:
                break
        }

        }
        
        
        
    }
    
    
    
    
    
}
