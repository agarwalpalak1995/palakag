//
//  ViewController.swift
//  arraytodict
//
//  Created by Sierra 4 on 25/01/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       /* var dictionary :[Int:String]=[1:"palak" , 2:"kanchan" , 3:"aditi"]
        let Var = dictionary[1]
        print("\(Var)")
        print("\(dictionary[2])")
        print("\(dictionary[3])")*/
        
       /* var arraytodict=[[Int:String]]()
        
        let somedict1:[Int:String] = [0:"PALAK"]
        let somedict2:[Int:String] = [1:"KANCHAN"]
        let somedict3:[Int:String] = [2:"ADITI"]
         arraytodict.append(somedict1)
         arraytodict.append(somedict2)
         arraytodict.append(somedict3)
      for index in 0...2
      {
        print("for INDEX \(index) value is\(arraytodict[index])")
        }
    }*/
         var arrayofdict=[[Int:String]]()
        for index in 0...10
        {
            let random1=Int(arc4random_uniform(60))
            let random2=generateRandomStringWithLength(length: 5)
            let somedict1:[Int:String]=[random1:random2]
            arrayofdict.append(somedict1)
        }
        for index in 0...10 {
        print("for INDEX \(index) value is\(arrayofdict[index])")
    }
}
func    generateRandomStringWithLength(length: Int)->String{
    
    var randomString = ""
    let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    
    for _ in 1...length {
        let randomIndex = Int(arc4random_uniform(UInt32(letters.characters.count)))
        let a = letters.index(letters.startIndex, offsetBy: randomIndex)
        randomString += String(letters[a])
    }
    return randomString
    }

override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

