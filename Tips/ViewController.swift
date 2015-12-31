//
//  ViewController.swift
//  Tips
//
//  Created by Dalton  on 12/30/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ravensLabel: UIImageView!
    @IBOutlet weak var tipTitle: UINavigationItem!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        ravensLabel.center.x = self.view.frame.width + 20
        
        UIView.animateWithDuration(2.0, delay: 0, usingSpringWithDamping: 1.0,initialSpringVelocity: 30.0, options: UIViewAnimationOptions.CurveEaseIn, animations: ({
            
            self.ravensLabel.center.x = self.view.frame.width - 160
            
        }),completion: nil)
        
        
        

        
        billField.center.x = self.view.frame.width + 30
        
        UIView.animateWithDuration(2.0, delay: 0, usingSpringWithDamping: 1.0,initialSpringVelocity: 30.0, options: UIViewAnimationOptions.CurveEaseIn, animations: ({
            
            self.billField.center.x = self.view.frame.width / 1.3
            
        }),completion: nil)
        
        
        
        
        tipLabel.center.x = self.view.frame.width + 5
        
        UIView.animateWithDuration(2.0, delay: 0, usingSpringWithDamping: 1.0,initialSpringVelocity: 50.0, options: UIViewAnimationOptions.CurveEaseIn, animations: ({
            
            self.tipLabel.center.x = self.view.frame.width / 1.5
            
        }),completion: nil)
        
        
        
        
        totalLabel.center.x = self.view.frame.width + 30
        
        UIView.animateWithDuration(2.0, delay: 0, usingSpringWithDamping: 1.0,initialSpringVelocity: 50.0, options: UIViewAnimationOptions.CurveEaseIn, animations: ({
            
            self.totalLabel.center.x = self.view.frame.width / 1.5
            
        }),completion: nil)
        
        
        
        
        tipControl.center.x = self.view.frame.width + 30
        
        UIView.animateWithDuration(2.0, delay: 0, usingSpringWithDamping: 1.0,initialSpringVelocity: 50.0, options: UIViewAnimationOptions.CurveEaseIn, animations: ({
            
            self.tipControl.center.x = self.view.frame.width / 2
            
        }),completion: nil)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let defaults = NSUserDefaults.standardUserDefaults()
        _ = defaults.doubleForKey("default_tip_percentage")
        _ = tipPercentages
        
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        let defaults = NSUserDefaults.standardUserDefaults()
        _ = defaults.doubleForKey("default_tip_percentage")
        
    
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    
    
    
    
    

}

