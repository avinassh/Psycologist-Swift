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