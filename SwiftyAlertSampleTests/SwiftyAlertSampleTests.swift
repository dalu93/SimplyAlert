//
//  SwiftyAlertSampleTests.swift
//  SwiftyAlertSampleTests
//
//  Created by Luca D'Alberti on 6/30/16.
//  Copyright © 2016 dalu93. All rights reserved.
//

import XCTest
@testable import SwiftyAlertSample

class SwiftyAlertSampleTests: XCTestCase {
    
    let cancelAction = UIAlertAction.Cancel(closure: nil)
    let defaultAction = UIAlertAction.Default(closure: nil)
    let destructiveAction = UIAlertAction.Destructive("My title", closure: nil)
    let alert = UIAlertController.alertWith(title: "My title", message: nil)
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCancelActionStyle() {
        
        XCTAssert(cancelAction.style == .Cancel, "The action has a wrong style. Should be `.Cancel`, but it is \(cancelAction.style)")
    }
    
    func testDefaultActionStyle() {
        
        XCTAssert(defaultAction.style == .Default, "The action has a wrong style. Should be `.Default`, but it is \(defaultAction.style)")
    }
    
    func testDestructiveActionStyle() {
        
        XCTAssert(destructiveAction.style == .Destructive, "The action has a wrong style. Should be `.Destructive`, but it is \(destructiveAction.style)")
    }
    
    func testAlertControllerChain() {
        
        XCTAssert(alert.add(cancelAction) == alert, "The new instance is different from the first one after calling the `add(_:)` method")
    }
    
    func testAddAction() {
        
        alert.add(defaultAction).add(destructiveAction)
        
        XCTAssert(alert.actions.contains(defaultAction), "The `UIAlertController` instance doesn't contains the just added `UIAlertAction`")
    }
}
