//
//  ViewController.swift
//  12-Stack
//
//  Created by Çağdaş Ekşi on 7.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var meyveler = Stack<String>()
        
        //        Push ile eleman ekleme
        //        Eklenen son eleman satck'ın ilk eleman olur.
        
        meyveler.push("Elma")
        meyveler.push("Armut")
        meyveler.push("Erik")
        meyveler.push("Kayısı")
        
        print(meyveler)
        
        //        Pop ile eleman çıkarma
        
        //        meyveler.pop()
        
        let sonEleman = meyveler.pop()
        print(sonEleman)
        print(meyveler)
        
        //        En üstteki elemanı bulma
        
        if let topValue = meyveler.topValue{
            print("Stack'ın en üstteki elemanı = \(topValue)")
            
        }
        
        //        Int türünde stack tanımı
        
        var yıllar = Stack<Int>()
        
        print(yıllar)
        
        yıllar.push(2020)
        yıllar.push(2021)
        yıllar.push(2022)
        yıllar.push(2023)
        
        print(yıllar)
        
        let lastYear = yıllar.pop()
        print(lastYear)
        
        //        Son eleman
        
        if let topYear = yıllar.topValue {
            print("En üst eleman: = \(topYear)")
            
        }
        
        
    }
    
    
}

struct Stack<T> {
    var values = [T]()
    var topValue: T? {
        return values.isEmpty ? nil : values[values.count - 1]
        
    }
    mutating func push(_ value:T) {
        values.append(value)
        
    }
    mutating func pop() -> T {
        return values.removeLast()
        
    }
    
}




