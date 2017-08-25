//
//  SecondPage.swift
//  TableViewApp
//
//  Created by Appinventiv Technologies on 24/08/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit

class SecondPage: UIViewController {
    
    var transferImage : String!
    var  transferLabel = ""
    var smallImageArr = [String]()
     var smallLabel = [String]()
  
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var newLbl: UILabel!
    @IBOutlet weak var newImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newImg.image = UIImage(named : transferImage)
        newLbl.text = transferLabel
        
        
            
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(tapGesture1))
        
        img1.addGestureRecognizer(tap1)
        
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(tapGesture2))
        img2.addGestureRecognizer(tap2)
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(tapGesture3))
        img3.addGestureRecognizer(tap3)
        let tap4 = UITapGestureRecognizer(target: self, action: #selector(tapGesture4))
        img4.addGestureRecognizer(tap4)
        
        
        
        // Do any additional setup after loading the view.
    }
    @objc func tapGesture1() {
        
        newImg.image = UIImage(named : smallImageArr[0])
        newLbl.text = String(smallLabel[6])
        print("tapped1")
        
        }
    @objc func tapGesture2() {
        
        newImg.image = UIImage(named : smallImageArr[1])
         newLbl.text = String(smallLabel[7])
         print("tapped2")
        
    }
    @objc func tapGesture3() {
        
        newImg.image = UIImage(named : smallImageArr[2])
         newLbl.text = String(smallLabel[8])
         print("tapped3")
        
    }
    @objc func tapGesture4() {
        
        newImg.image = UIImage(named : smallImageArr[3])
         newLbl.text = String(smallLabel[5])
         print("tapped4")
        
    }
    
//        for i in 0...3{
//        newImg.image = UIImage(named :smallImageArr[i])
//        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

