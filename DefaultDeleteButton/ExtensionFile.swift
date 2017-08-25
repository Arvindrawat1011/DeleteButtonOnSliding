//
//  ExtensionFile.swift
//  TableViewTesting
//
//  Created by Appinventiv Technologies on 23/08/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit

extension FirstPage : UITableViewDataSource, UITableViewDelegate{
    
   
            // Returns Table Cell count
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print("image count is \(Image.count)")
        return Image.count
        
    }
    
    
        // Returns cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "textFieldCell", for: indexPath) as! TextFieldCell
        
        cell.lblOne.text = labelOne[indexPath.row]
        cell.lblTwo.text = labelTwo[indexPath.row]
        
        cell.imgView.image = UIImage(named : Image[indexPath.row])
        let text = indexPath.row
        print(text)
        cell.lblCounter.text = String(text+1)
        
        
        return cell
        
    }
    
    
    //   Selected row or cell
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
        
        let currentCell = tableView.cellForRow(at: indexPath!) as! TextFieldCell
        
        let obj = self.storyboard?.instantiateViewController(withIdentifier: "SecondPage") as! SecondPage
        print(indexPath!)
        obj.transferImage =  Image[(indexPath?.row)!]
        
        obj.transferLabel = currentCell.lblOne.text!
        
        obj.smallImageArr = smallImage
        obj.smallLabel = labelOne
        
        self.navigationController?.pushViewController(obj, animated: true)
        

        
        
    
}
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        
        if editingStyle == .delete
        {
            print("Row deleted\(indexPath.row)")
            
            Image.remove(at: indexPath.row )
            labelOne.remove(at: indexPath.row )
            labelTwo.remove(at: indexPath.row )
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.reloadData()
            
        }
        
        
    }
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Erase"
    }
}
