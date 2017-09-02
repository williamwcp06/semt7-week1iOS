//
//  SecondViewController.swift
//  week1iOS
//
//  Created by william on 9/2/17.
//  Copyright © 2017 william. All rights reserved.
//

import UIKit

protocol passingData {
    func passingData(_ passingData: [String])
    
}

class SecondViewController: UIViewController {

    var delegate:passingData?
    
    @IBOutlet weak var toDoListTxtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    @IBAction func saveButton(_ sender: Any) {
        
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        let dateString = formatter.string(from: date)
        
        
        data.append((date: dateString, todo: toDoListTxtField.text!))
        toDoListTxtField.text = nil
        //self.delegate?.passingData(data)
        tabBarController?.selectedIndex = 0
        
    }

}

