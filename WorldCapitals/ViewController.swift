//
//  ViewController.swift
//  WorldCapitals
//
//  Created by Mirko Cukich on 9/20/15.
//  Copyright © 2015 Digital Mirko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    // Image View for Country flag
    @IBOutlet var image1: UIImageView!
    // Image View for Country image
    @IBOutlet var image2: UIImageView!
    
    // Label for Country
    @IBOutlet var label1: UILabel!
    // Label for Capital City
    @IBOutlet var label2: UILabel!
    // Label for message
    @IBOutlet var message: UILabel!
    
    // array within an array, country names then capital city names
    // array index 0, array index 1, it has 2 elements
    var data = [["USA", "Italy", "China", "England"],["Beijing","London", "Rome", "Washington, DC"]]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // How many spinning wheels do we need, we need 2, 1 - country, 1 - city
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return data.count
    }
    
    // number of rows in each spinning wheel, we will need comp 1 need 4, comp 2 need 2
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return data[component].count
    }
    
    // return values as written in the data array
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return data[component][row]
    }

    // image assets
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       
        // hold the identity of value of whats selected in picker view
        let item1 = data[0][pickerView.selectedRowInComponent((0))]
        let item2 = data[1][pickerView.selectedRowInComponent((1))]
        
        // var for each image flag
        let usa = UIImage(named: "usa.jpg")
        let italy = UIImage(named: "italy.jpg")
        let china = UIImage(named: "china.jpg")
        let england = UIImage(named: "england.jpg")

        // var for each image location
        let washington = UIImage(named: "washington.jpg")
        let rome = UIImage(named: "rome.jpg")
        let beijing = UIImage(named: "beijing.jpg")
        let london = UIImage(named: "london.jpg")
        
        // How to play message
        let mess = "Match the Flags to the Capitals"
        
        // var for a correct match
        let correctMess = "The Capital of \(item1) is \(item2)."

        // switch for country flags
        switch(item1){
            
            case "USA":
                image1.image = usa
                label1.text = "USA"
                break
            
            case "Italy":
                image1.image = italy
                label1.text = "Italy"
                break
            
            case "China":
                image1.image = china
                label1.text = "China"
                break
            
            case "England":
                image1.image = england
                label1.text = "England"
                break
            
            default:
                image1.image = usa
                label1.text = "USA"
                break
        }// end of switch item1

        // switch for country capital images
        switch(item2) {
            
            case "Beijing":
                image2.image = beijing
                label2.text = "Beijing"
                // determines message label text
                if (label1.text == "China") {
                    message.text = correctMess
                } else {
                    message.text = mess
                }
                break
            
            case "London":
                image2.image = london
                label2.text = "London"
                // determines message label text
                if(label1.text == "England"){
                    message.text = correctMess
                } else {
                    message.text = mess
                }
                break
            
            case "Rome":
                image2.image = rome
                label2.text = "Rome"
                // determines message label text
                if(label1.text == "Italy") {
                    message.text = correctMess
                } else {
                    message.text = mess
                }
                break
            
            case "Washington, DC":
                image2.image = washington
                label2.text = "Washington"
                // determines message label text
                if(label1.text == "USA") {
                    message.text = correctMess
                } else {
                    message.text = mess
                }
                break
            
            default:
                image2.image = washington
                label2.text = "Washington"
                break
        } // end of switch item2
        
        
    } // end of didSelectRow
 

} // end of app

