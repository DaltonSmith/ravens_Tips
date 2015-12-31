//
//  SettingsViewController.swift
//  Tips
//
//  Created by Dalton  on 12/30/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var ravenLabel: UIImageView!
    @IBOutlet weak var changingDef: UILabel!
    @IBOutlet weak var firstBox: UILabel!
    @IBOutlet weak var secBox: UILabel!
    @IBOutlet weak var thirBox: UILabel!
    @IBOutlet weak var defaultTxt: UILabel!
    @IBOutlet weak var updateTipControl: UISegmentedControl!
    @IBOutlet weak var changeDefaultTip: UITextField!
    @IBOutlet weak var firstPercField: UITextField!
    @IBOutlet weak var secPercField: UITextField!
    @IBOutlet weak var thirPercField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        ravenLabel.center.x = self.view.frame.width + 30
        
        UIView.animateWithDuration(1.0, delay: 0, usingSpringWithDamping: 1.0,initialSpringVelocity: 50.0, options: UIViewAnimationOptions.CurveEaseIn, animations: ({
            
            self.ravenLabel.center.x = self.view.frame.width / 2
            
        }),completion: nil)
        
        
        
        
        
        changingDef.center.x = self.view.frame.width + 30
        
        UIView.animateWithDuration(1.0, delay: 0, usingSpringWithDamping: 1.0,initialSpringVelocity: 30.0, options: UIViewAnimationOptions.CurveEaseIn, animations: ({
            
            self.changingDef.center.x = self.view.frame.width / 2
            
        }),completion: nil)
        
        
        
        
        firstBox.center.x = self.view.frame.width + 5
        
        UIView.animateWithDuration(2.0, delay: 0, usingSpringWithDamping: 1.0,initialSpringVelocity: 50.0, options: UIViewAnimationOptions.CurveEaseIn, animations: ({
            
            self.firstBox.center.x = self.view.frame.width / 2
            
        }),completion: nil)
        
        
        
        
        secBox.center.x = self.view.frame.width + 30
        
        UIView.animateWithDuration(3.0, delay: 0, usingSpringWithDamping: 1.0,initialSpringVelocity: 50.0, options: UIViewAnimationOptions.CurveEaseIn, animations: ({
            
            self.secBox.center.x = self.view.frame.width / 2
            
        }),completion: nil)
        
        
        
        
        thirBox.center.x = self.view.frame.width + 30
        
        UIView.animateWithDuration(4.0, delay: 0, usingSpringWithDamping: 1.0,initialSpringVelocity: 50.0, options: UIViewAnimationOptions.CurveEaseIn, animations: ({
            
            self.thirBox.center.x = self.view.frame.width / 2
            
        }),completion: nil)
        
        
        
        defaultTxt.center.x = self.view.frame.width + 30
        
        UIView.animateWithDuration(5.0, delay: 0, usingSpringWithDamping: 1.0,initialSpringVelocity: 50.0, options: UIViewAnimationOptions.CurveEaseIn, animations: ({
            
            self.defaultTxt.center.x = self.view.frame.width / 2
            
        }),completion: nil)
        
        
        
        
        
        
        
        
       
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        
    }
    
    
    @IBAction func firstChange(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(0.2, forKey: "default_tip_percentage")
        defaults.synchronize()
        
    }
    
    @IBAction func secChange(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(0.2, forKey: "default_tip_percentage")
        defaults.synchronize()
    }
    
    @IBAction func thirChange(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(0.2, forKey: "default_tip_percentage")
        defaults.synchronize()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
