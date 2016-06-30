//
//  SimplyAlert.swift
//  SwiftyAlertSample
//
//  Created by Luca D'Alberti on 6/30/16.
//  Copyright © 2016 dalu93. All rights reserved.
//

import UIKit

// MARK: - UIAlertAction extension
extension UIAlertAction {
    
    /// Generic typealias to shorten the `UIAlertAction` handler interface
    typealias AlertActionClosure = ((UIAlertAction)->())?
    
    /**
     Creates a new `UIAlertAction` instance with `UIAlertActionStyle` equal to
     `.Cancel` using a default title ("Cancel") or by using your title and then
     assigning it an handler
     
     - parameter title:   Default value is "Cancel".
     - parameter closure: The closure to be executed when the action is activated
     
     - returns: Returns a new `UIAlertAction` instance
     */
    static func Cancel(title: String = "Cancel", closure: AlertActionClosure) -> UIAlertAction {
        
        return UIAlertAction(
            title: title,
            style: .Cancel,
            handler: closure
        )
    }
    
    /**
     Creates a new `UIAlertAction` instance with `UIAlertActionStyle` equal to
     `.Default` using a default title ("Ok") or by using your title and then
     assigning it an handler
     
     - parameter title:   Default value is "Ok"
     - parameter closure: The closure to be executed when the action is activated
     
     - returns: Returns a new `UIAlertAction` instance
     */
    static func Default(title: String = "Ok", closure: AlertActionClosure) -> UIAlertAction {
        
        return UIAlertAction(
            title: title,
            style: .Default,
            handler: closure
        )
    }
    
    /**
     Creates a new `UIAlertAction` instance with `UIAlertActionStyle` equal to
     `.Cancel` using your title and then assigning it an handler
     
     - parameter title:   Title to show
     - parameter closure: The closure to be executed when the action is activated
     
     - returns: Returns a new `UIAlertAction` instance
     */
    static func Destructive(title: String, closure: AlertActionClosure) -> UIAlertAction {
        
        return UIAlertAction(
            title: title,
            style: .Destructive,
            handler: closure
        )
    }
}

// MARK: - UIAlertController extension
extension UIAlertController {
    
    /**
     Creates a new `UIAlertController` instance using `.Alert` as `preferredStyle`
     
     - parameter title:   Title of the alert
     - parameter message: Message of the alert
     
     - returns: Returns a new `UIAlertController` instance using `.Alert` as `preferredStyle`
     */
    static func alertWith(title title: String, message: String?) -> UIAlertController {
        
        return UIAlertController(
            title: title,
            message: message,
            preferredStyle: .Alert
        )
    }
    
    /**
     Adds the new action to the controller and returns the `UIAlertController`
     instance to chain it other operations (multiple add for example)
     
     - parameter action: The `UIAlertAction` to add
     
     - returns: Returns the `UIAlertController` instance
     */
    func add(action: UIAlertAction) -> UIAlertController {
        
        addAction(action)
        return self
    }
    
    /**
     Presents the `UIAlertController` instance within the `UIViewController`
     passed as parameter
     
     - parameter controller: Controller to use to show the `UIAlertController`
                             instance
     - parameter animated: Default is true
     - parameter completion: Default is an empty closure
     */
    func presentIn(controller: UIViewController, animated: Bool = true, completion: ()->() = {}) {
        
        controller.presentViewController(
            self,
            animated: animated,
            completion: completion
        )
    }
}