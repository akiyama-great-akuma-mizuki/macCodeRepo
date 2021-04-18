//
//  ViewController.swift
//  homework7
//
//  Created by 0commander on 2021/4/17.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var student : Student?
    var isAdd:Bool = true
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var birthday: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var score: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let stu = self.student{
            name.text = stu.name
            birthday.text = stu.birthday;
            score.text = stu.score;
            address.text = stu.score;
        }
    }

    @IBAction func SaveBtnClicked(_ sender: Any) {
        
        
        if let stu = self.student{
            stu.name = name.text!
            stu.birthday = birthday.text!
            stu.score =  score.text!
            stu.address  = address.text!
        }
        performSegue(withIdentifier: "unwind", sender: self)
        
    }
    //@IBAction finc save
    
}

