//
//  ViewController.swift
//  swiftAnimate
//
//  Created by Sridhar Sanapala on 6/6/15.
//  Copyright (c) 2015 sridhar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewCenterXConstraint:NSLayoutConstraint!
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.myView.layer.shadowColor = UIColor.blackColor().CGColor
        self.myView.layer.shadowOffset = CGSizeMake(0, 50.0)
        self.myView.layer.shadowOpacity = 0.5
        self.myView.layer.shadowRadius = 5
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animateTapped(sender: AnyObject) {
        
        self.animateFirst()
        
    }
    
    func animateFirst(){

        self.viewCenterXConstraint.constant = 500

        UIView.animateWithDuration(0.2, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: UIViewAnimationOptions.CurveEaseInOut,
            animations: {
                self.view.layoutIfNeeded()
            }, completion: {finished in
                self.viewCenterXConstraint.constant = -500
                self.view.layoutIfNeeded()
                self.animateSecond()
        })
    }

    func animateSecond(){
        
        self.viewCenterXConstraint.constant = 0
        UIView.animateWithDuration(0.2, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.8, options: UIViewAnimationOptions.CurveEaseInOut,
            animations: {
                self.view.layoutIfNeeded()
            }, completion: {finished in
//                self.animateSecond()
        })
    }
}

