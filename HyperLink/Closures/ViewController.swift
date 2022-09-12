
//
//  ViewController.swift
//  Closures
//
//  Created by Ninesol Tech on 17/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import UIKit
class ViewController: UIViewController{
    
    @IBOutlet weak var myTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let linkedText = NSMutableAttributedString(attributedString: myTextView.attributedText)
        let hyperlinked = linkedText.setAsLink(textToFind: "Settings and privacy", linkURL: "https://www.google.com/")
        myTextView.attributedText = NSAttributedString(attributedString: linkedText)
       
    }
    
}

//Marks: - extension: NSMutableAttributedString
extension NSMutableAttributedString {
    public func setAsLink(textToFind:String, linkURL:String) -> Bool {

        let foundRange = self.mutableString.range(of: textToFind)

        if foundRange.location != NSNotFound {
            self.addAttribute(.link, value: linkURL, range: foundRange)
            return true
        }
        return false
    }
}

