//
//  ViewController.swift
//  19-Properties
//
//  Created by Çağdaş Ekşi on 11.01.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var userInfo = userInfo(name: "cagdas", age: 20)
        print(userInfo.age)
        
//        yeni bir değer atama işlemi
        
        userInfo.age = 31
        print(userInfo.age)
        
//
       var user = User()
        
        user.user2.age = 32
        print(user.user2.age)
    }


}
struct userInfo {
    let name: String
    var age: Int
    
    }

struct userInfo2 {
    var name: String
    var age: Int
    
    init(_name:String, _age:Int) {
        
        print("init çalıştı")
        
        self.name = _name
        self.age = _age
        
        
    }
    
}

struct User{
//    var user1 = userInfo2(_name: "sirin", _age: 30)
    
  lazy  var user2 = userInfo2(_name: "sirin", _age: 30)
    
}




