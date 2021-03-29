//
//  UserViewController.swift
//  HomeWork4
//
//  Created by 0commander on 2021/3/27.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginPress(_ sender: Any) {
        let loginVC = UserLoginViewController()
        present(loginVC,animated: true,completion: nil)
        
    }
    
    
    @IBAction func logonPress(_ sender: Any) {
    }
    
    @IBAction func otherPress(_ sender: Any) {
        let login3rd = User3rdViewController()
        present(login3rd, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
