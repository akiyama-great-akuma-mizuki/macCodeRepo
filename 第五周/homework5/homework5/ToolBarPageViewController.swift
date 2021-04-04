//
//  ToolBarPageViewController.swift
//  homework5
//
//  Created by 0commander on 2021/4/3.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class ToolBarPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        vc1.view.backgroundColor = UIColor.red
        vc2.view.backgroundColor = UIColor.green
        vc3.view.backgroundColor = UIColor.blue
        self.addChild(vc1)
        self.addChild(vc2)
        self.addChild(vc3)
        // Do any additional setup after loading the view.
    }
    //@IBOutlet weak var contentView: ADBannerView!
    let vc1 = UIViewController()
    let vc2 = UIViewController()
    let vc3 = UIViewController()
    @IBOutlet weak var contentView: UIView!

    @IBAction func btnBarPressed(_ sender: UIBarButtonItem) {
        contentView.addSubview(vc1.view)
    }
    
    @IBAction func GreenPressed(_ sender: UIBarButtonItem) {
        contentView.addSubview(vc2.view)    }

    @IBAction func BluePressed(_ sender: UIBarButtonItem) {
        contentView.addSubview(vc3.view)    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
