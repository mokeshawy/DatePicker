//
//  ViewController.swift
//  datepicker
//
//  Created by Mohamed Keshawy on 13/05/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DatePicker: UIDatePicker!
    
    @IBOutlet weak var LiDatePreview: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func GetDateBtn(_ sender: UIButton) {
        let currentDate = Date()
        let userDOB = DatePicker.date
        let calender = Calendar.current
        let component = calender.dateComponents([Calendar.Component.year], from:userDOB,to: currentDate)
        LiDatePreview.text = "You are \(component.year ?? 0) years old"
    }
}

