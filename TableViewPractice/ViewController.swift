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
    
    @IBAction func ShowAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Button Was Pressed",message: "This is " + text, preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "ok", style: .cancel) { (action) in
            print("pressed!")
        }
        alert.addAction(action1)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func ShareToApp(_ sender: Any) {
        let activityViewController = UIActivityViewController(activityItems: [textView.text], applicationActivities: nil)
        present(activityViewController, animated: true, completion: nil)
    }
    
    
}

