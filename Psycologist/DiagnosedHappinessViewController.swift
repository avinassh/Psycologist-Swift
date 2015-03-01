//
//  DiagnosedHappinessViewController.swift
//  Psycologist
//
//  Created by avi on 01/03/15.
//  Copyright (c) 2015 avi. All rights reserved.
//

import UIKit

class DiagnosedHappinessViewController: HappinessViewController {
    
    var diagnosticHistory = [Int]()
    
    override var happiness: Int {
        didSet {
            // when a property is overridden, the instructions didSet will
            // copied, will be run first and then following will run
            diagnosticHistory += [happiness]
        }
    }
    
    private struct History {
        static let segueIdentifier = "Show Diagnostic History"
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
            case History.segueIdentifier:
                if let tvc = segue.destinationViewController as? TextViewController {
                    tvc.text = "\(diagnosticHistory)"
                }
            default: break
            }
        }
    }
    
}