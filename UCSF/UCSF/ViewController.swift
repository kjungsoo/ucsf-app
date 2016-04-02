//
//  ViewController.swift
//  UCSF
//
//  Created by Kevin Nguyen on 3/30/16.
//  Copyright © 2016 Jimbus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: properties

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var traineeName: UITextField!
    @IBOutlet weak var caseID: UITextField!
    @IBOutlet weak var hospital: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nextButton.layer.cornerRadius = 5
        nextButton.layer.borderWidth = 1
        nextButton.layer.borderColor = UIColor.whiteColor().CGColor
        traineeName.attributedPlaceholder = NSAttributedString(string: "Trainee Name", attributes: [NSForegroundColorAttributeName: UIColor.whiteColor()])
        caseID.attributedPlaceholder = NSAttributedString(string: "Case ID", attributes: [NSForegroundColorAttributeName: UIColor.whiteColor()])
        hospital.attributedPlaceholder = NSAttributedString(string: "Hospital", attributes: [NSForegroundColorAttributeName: UIColor.whiteColor()])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: actions

}

