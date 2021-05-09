//
//  ViewController.swift
//  homework10_1
//
//  Created by 0commander on 2021/5/8.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let defaults = UserDefaults.standard
    let uidKey = "uid"
    let nameKey = "Name"
    @IBOutlet weak var uid_prefer: UITextField!
    @IBOutlet weak var name_prefer: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loadBtnPress(_ sender: Any) {
        uid_prefer.text = defaults.string(forKey: uidKey)
        name_prefer.text = defaults.string(forKey: nameKey)
    }
    
    @IBAction func SaveBtnPress(_ sender: Any) {
        let uid = uid_prefer.text!
        let name = name_prefer.text!
        defaults.set(uid, forKey: uidKey)
        defaults.set(name, forKey: nameKey)
    }
}

