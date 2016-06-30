//
//  ViewController.swift
//  SwiftyAlertSample
//
//  Created by Luca D'Alberti on 6/30/16.
//  Copyright © 2016 dalu93. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        
        // Here I'm using the default text that is "Cancel". You can override it
        // by calling `UIAlertAction.Cancel("My text") { print($0) }`
        let cancelAction = UIAlertAction.Cancel { print($0) }
        
        // Same as before
        let okayAction = UIAlertAction.Default { print($0) }
        
        
        let logoutAction = UIAlertAction.Destructive("Logout") { print($0) }
        
        // Using the chain provided by `add(_:)` that returns 
        // the same `UIAlertController` instance
        let _ = UIAlertController.alertWith(
            title: "My title",
            message: "My message"
        ).add(cancelAction)
        .add(okayAction)
        .add(logoutAction)
        .presentIn(self)
    }

}

