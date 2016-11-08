//
//  AddTestViewController.swift
//  HealthMatic-ListPatients
//
//  Created by Shelalaine Chan on 2016-10-20.
//  Copyright © 2016 Team SPY. All rights reserved.
//

import UIKit

class AddTestViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var doneToolbar: UIToolbar!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doneToolbar.isHidden = true
        datePicker.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func enterDateAction(_ sender: AnyObject) {
        print("Enter date is clicked")
        doneToolbar.isHidden = false
        datePicker.isHidden = false
    }
    
    @IBAction func closeDatePicker(_ sender: UIBarButtonItem) {
        doneToolbar.isHidden = true
        datePicker.isHidden = true
        
        let datePickerView:UIDatePicker = UIDatePicker()
        datePickerView.datePickerMode = UIDatePickerMode.dateAndTime
        
        let formatter = DateFormatter()
        // formatter.dateStyle = .medium
        // formatter.timeStyle = .medium
        formatter.dateFormat = "MMM dd, yyyy HH:mm a"
        
        let strDate = formatter.string(from: datePicker.date)
        self.dateTextField.text = strDate
    }
}
