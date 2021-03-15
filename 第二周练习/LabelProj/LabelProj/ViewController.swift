//
//  ViewController.swift
//  LabelProj
//
//  Created by 0commander on 2021/3/15.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LabelMessage.text = "启动"
    }


    var flag : Bool = true
    @IBAction func click(_ sender: Any) {
        if(flag){
            LabelMessage.text = "停止"
        }
        else{
            LabelMessage.text =
                "启动"
        }
    }
    
    @IBOutlet weak var LabelMessage: UILabel!
}

