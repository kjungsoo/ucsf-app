//
//  ViewController.swift
//  UCSF
//
//  Created by Kevin Nguyen on 3/30/16.
//  Copyright © 2016 Jimbus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    
    // MARK: properties

    @IBOutlet weak var hospitalButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var traineeName: UITextField!
    @IBOutlet weak var caseID: UITextField!
    @IBOutlet weak var hospital: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Sets the radius, width, and color of the button borders.
        nextButton.layer.cornerRadius = 5
        nextButton.layer.borderWidth = 1
        nextButton.layer.borderColor = UIColor.whiteColor().CGColor
        
        hospitalButton.layer.cornerRadius = 5
        hospitalButton.layer.borderWidth = 1
        hospitalButton.layer.borderColor = UIColor.whiteColor().CGColor
        
        // Sets the placeholder text color to white.
        traineeName.attributedPlaceholder = NSAttributedString(string: "Trainee Name", attributes: [NSForegroundColorAttributeName: UIColor.whiteColor()])
        
        caseID.attributedPlaceholder = NSAttributedString(string: "Case ID", attributes: [NSForegroundColorAttributeName: UIColor.whiteColor()])
        
        hospital.attributedPlaceholder = NSAttributedString(string: "Hospital", attributes: [NSForegroundColorAttributeName: UIColor.whiteColor()])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: actions
    
    
    @IBAction func popOver(sender: AnyObject) {
        self.performSegueWithIdentifier("showView", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showView" {
            let vc = segue.destinationViewController
            let controller = vc.popoverPresentationController
            
            // Sets the coordinates of the popover arrow so that it points to the middle of the anchor view.
            segue.destinationViewController.popoverPresentationController?.sourceRect = CGRectMake(hospitalButton.frame.size.width/2, 0, 0, 0)
            
            if  controller != nil {
                controller?.delegate = self
            }
        }
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    
}

