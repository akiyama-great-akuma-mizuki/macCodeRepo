//
//  UserRegisterViewController.swift
//  FinalTask
//
//  Created by 0commander on 2021/5/19.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class UserRegisterViewController: UIViewController {
    
    let Mydefault = UserDefaults.standard
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var nameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func okPressed(_ sender: Any) {
        //save to default
        let uid = nameText.text!
        let password = passwordText.text!
        Mydefault.set(uid, forKey: "name")
    Mydefault.set(password,forKey:"password")
        self.dismiss(animated: true, completion: nil)
    }
}
    //save to default
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

