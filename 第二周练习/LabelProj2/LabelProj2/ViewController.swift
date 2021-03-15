//
//  ViewController.swift
//  LabelProj2
//
//  Created by 0commander on 2021/3/15.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var flag : Bool = true
    @IBAction func click(_ sender: Any) {
        labelMsg.text = "停止"
        if(flag){
            labelMsg.text = "停止"
        }
        else{
            labelMsg.text = "启动"
        }
        flag = !flag
    }
    
    @IBOutlet weak var labelMsg: UILabel!
}

