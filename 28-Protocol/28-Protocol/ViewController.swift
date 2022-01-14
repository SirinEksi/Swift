//
//  ViewController.swift
//  28-Protocol
//
//  Created by Çağdaş Ekşi on 14.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let obj = user(iname: "sirin", iage: 30)
        
        get(p: obj)
        
    }
    
    func get(p: vip) {
        p.nameGetter()
        p.ageGetter()
        
    }
    
}

protocol vip {
    var name: String? {get}
    var age: Int? {get}
    
    func nameGetter()
    func ageGetter()
    
}

class user: vip {
    
    var name: String?
    var age: Int?
    
    init () {}
    
    init(iname: String?, iage: Int?) {
        name = iname
        age = iage
        
    }
    
    func nameGetter() {
        print(name!)
    }
    func ageGetter() {
        print(age!)
    }
}

