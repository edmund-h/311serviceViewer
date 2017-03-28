//
//  ViewController.swift
//  311 Tester
//
//  Created by Edmund Holderbaum on 3/25/17.
//  Copyright © 2017 Bozo Design Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        APIclient.getInfo(completion: { data in
            self.textView.text = data
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

