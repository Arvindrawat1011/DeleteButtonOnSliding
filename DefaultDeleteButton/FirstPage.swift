//
//  ViewController.swift
//  TableViewTesting
//
//  Created by Appinventiv Technologies on 23/08/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit

class FirstPage: UIViewController {

    @IBOutlet weak var firstPageTableView: UITableView!
    
    
   
    
    
    
          // first label for cell
var labelOne = ["Mac 13 inch","Acer 13.3 inch","MSI 15.6 inch","HP 15 inch","Samsung 15.6 inch ","Samsung 13.3 inch","HP 15 inch","ASUS 15.6 inch","Sony Vaio 13.3 inch","ASUS 15.6 inch","Lenovo 14.5 inch","ASUS 13.3 inch  ","Samsung 13.3 inch"]
    
    
        // Second label for cell
    var labelTwo = ["Rs. 80000","Rs. 80000","Rs. 80000","Rs. 80000","Rs. 80000","Rs. 80000","Rs. 80000","Rs. 80000","Rs. 80000","Rs. 80000","Rs. 80000","Rs. 80000","Rs. 80000"]
    
        // Image Url
     var Image = ["laptop1","laptop2","laptop3","laptop4","laptop5","laptop6","laptop7","laptop8","laptop9","laptop10","laptop11","laptop12","laptop13"]
    
    let smallImage = ["laptop7","laptop8","laptop9","laptop6"]
    
    
    
    
    
    override func viewDidLoad() {
                    super.viewDidLoad()
        
                    firstPageTableView.dataSource = self
                    firstPageTableView.delegate = self
        
                }

            override func didReceiveMemoryWarning() {
                    super.didReceiveMemoryWarning()
        
        
        
                    }
    
}


    
class TextFieldCell: UITableViewCell {
    
            // Outlets of Cell
    
    @IBOutlet weak var lblOne: UILabel!
    
    @IBOutlet weak var lblTwo: UILabel!
   
    @IBOutlet weak var lblCounter: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    override func prepareForReuse() {
        super.prepareForReuse()
        
      
    }
    
}
    







