//
//  Piramit.swift
//  Piramit
//
//  Created by Çağdaş Ekşi on 3.03.2022.
//

import Foundation
import UIKit

class Piramit: UIViewController {
    
    fileprivate var bulmacalar : [Bulmaca] = []
    @IBOutlet var ekran: Ekran!
    
    func viewDidload(){
        super.viewDidLoad()
        
        var i, pozisyon : Int
        
        let bulmacaBilgileri : [String] = ["443252145336141522663" , "234524435626143614625" , "161524246313452326215" , "355424315665631243245" , "6536345426213561325265" , "543236612135654465432" , "445385279314268683141725276595138379834941283" , "345342468929768161215485464767167583529398619" ,"233154981265474421359918793858356165737438971", "134925548326192374564412375353491475182356918"]
        for i in 0..<bulmacaBilgileri.count{
            bulmacalar.append(Bulmaca(bulmacaBilgisi: bulmacaBilgileri[i]))
        }
        
        pozisyon = Int(arc4random_uniform(UInt32(bulmacalar.count)))
        ekran.puzzle = bulmacalar[pozisyon]
        if let kareSayisi = ekran.puzzle?.buyukluk{
            ekran.cellWidth = UIScreen.main.bounds.size.width / CGFloat(kareSayisi + 2)
        }
        ekran.setNeedsDisplay()
        
    }
    
    func hucreTikla (sender: UITapGestureRecognizer) {
        var nokta : CGPoint = sender.location(in: self.view)
        var i, j : Int
        var alan : CGRect
        var x , y , solSira : CGFloat
        if let kareSayisi = ekran.puzzle?.buyukluk{
            for i in 0..<kareSayisi{
                for j in 0...i{
                    solSira = CGFloat(kareSayisi - i + 1 + 2 * j) / 2.0
                    x = solSira * ekran.cellWidth
                    y = CGFloat(i + 1) * ekran.cellWidth
                    alan = CGRect(x: x , y: y , width:ekran.cellWidth,height: ekran.cellWidth)
                    if(nokta.x >= alan.origin.x && nokta.x <= alan.origin.x + alan.size.width && nokta.y >= alan.origin.y && nokta.y <= alan.origin.y + alan.size.height) {
                        ekran.puzzle?.oyna(satir: i, deger: j)
                        ekran.setNeedsDisplay()
                        return
                        
                        
                        
                    }
                    
                    
                }
                
                
                
            }
            
            
            
        }
        
        
        
    }
}
