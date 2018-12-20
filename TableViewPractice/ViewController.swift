//
//  ViewController.swift
//  TableViewPractice
//
//  Created by Zoilo Mercedes on 12/19/18.
//  Copyright © 2018 Zoilo Mercedes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    var text = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // shows changes every time view appears
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textView.text = text
    }
}

