//
//  ViewController.swift
//  29-AccessControls
//
//  Created by Çağdaş Ekşi on 14.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //      İnternal ile erişebiliyoruz
        let ac = accessControl()
        ac.myMessage()
        
        //       fileprivate ile aynı dosya üzerinde olduğu için erişebiliyoruz
        ac.myMesaage(Message: "fileprivate mesajıdır")
        
        //        private
        ac.privateMesaage()
        
    }
    
    
}
struct accessControl {
    internal func myMessage() {
        print("Hello Swift")
        
    }
    
    fileprivate func myMesaage(Message: String){
        print(Message)
        
    }
    
    private func myMessage(title: String, mesaage: String) {
        print("title: \(title), message: \(mesaage)")
        
    }
    func privateMesaage(){
        print(myMessage(title: "private", mesaage: "sadece aynı skop üzerinde çalışır"))
        
        
    }
    
    
}
