//
//  TextViewController.swift
//  Psycologist
//
//  Created by avi on 01/03/15.
//  Copyright (c) 2015 avi. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {

    @IBOutlet weak var textView: UITextView! {
        didSet {
            textView.text = text
        }
    }
    
    var text: String = "" {
        didSet {
            textView?.text = text
        }
    }
    
    override var preferredContentSize: CGSize {
        get {
            // following says set the view size so that pop over displays the 
            // history array and no extra space.
            if textView != nil && presentingViewController != nil {
                return textView.sizeThatFits(presentingViewController!.view.bounds.size)
            } else {
                return super.preferredContentSize
            }
        }
        set {
            super.preferredContentSize = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
