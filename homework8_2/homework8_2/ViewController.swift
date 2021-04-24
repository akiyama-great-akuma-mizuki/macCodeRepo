//
//  ViewController.swift
//  homework8_2
//
//  Created by 0commander on 2021/4/24.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var phone: UITextField!
    var sqlServe = SQLiteManager.sharedInstance
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Test.initDB()
        if !sqlServe.openDB() {return}
        var res = sqlServe.execQuerySQL(sql: "SELECT * from student WHERE id = 1")
        name.text = res?[0]["name"] as? String
        phone.text = res?[0]["phone"] as? String
        
    }

    @IBAction func testBtnPressed(_ sender: Any) {
        Test.GetStudent()
        if !sqlServe.execNoneQuerySQL(sql: "UPDATE student SET name = '\(name.text!)' , phone = '\(phone.text!)' WHERE id = 1"){
            print("false")
            return
        }
        var res = sqlServe.execQuerySQL(sql: "SELECT * from student WHERE id = 1")
        name.text = res?[0]["name"] as? String
        phone.text = res?[0]["phone"] as? String
    }
    
}

