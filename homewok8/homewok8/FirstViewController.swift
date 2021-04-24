//
//  FirstViewController.swift
//  homewok8
//
//  Created by 0commander on 2021/4/24.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var addItemDelegate : AddItemDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        let nav = tabBarController?.viewControllers?[1] as? UINavigationController
        let sectab = nav?.viewControllers.first as? SecondTableViewController
        // Do any additional setup after loading the view.
        addItemDelegate = sectab
    }
    
    @IBAction func saveBtnClicked(_ sender: Any) {
        let index = Int(arc4random_uniform(100))
        addItemDelegate?.addItem(index: index)
        
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
