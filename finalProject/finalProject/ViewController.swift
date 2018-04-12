//
//  ViewController.swift
//  finalProject
//
//  Created by Bo Li on 4/11/18.
//  Copyright © 2018 Bo Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    var menuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        menuView.layer.shadowOpacity = 6 // shadow of right margin of menu bar
        menuView.layer.shadowRadius = 6 // shadow of left margin of menu bar
        
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

    @IBAction func menuButton(_ sender: Any) {
        if ( menuShowing ) {
            leadingConstraint.constant = -140
            
            UIView.animate(withDuration: 0.4, animations: {
                self.view.layoutIfNeeded()
            })
        } else {
            leadingConstraint.constant = 0
            
            UIView.animate(withDuration: 0.4, animations: {
                self.view.layoutIfNeeded()
            })
        }
        
        menuShowing = !menuShowing
    }
    
}

