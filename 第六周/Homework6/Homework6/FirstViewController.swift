//
//  FirstViewController.swift
//  Homework6
//
//  Created by 0commander on 2021/4/10.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource {
    let products = [
        ["name":"j32","detail":"jsd32G"],
        ["name":"j24","detail":"jsd24G"],
        ["name":"j16","detail":"jsd16G"],
        ["name":"j32","detail":"jsd32G"],
        ["name":"j24","detail":"jsd24G"],
        ["name":"j16","detail":"jsd16G"]
    ]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell1",for : indexPath)
        cell.textLabel?.text = products[indexPath.row]["name"]
        cell.detailTextLabel?.text = products[indexPath.row]["detail"]
        cell.imageView?.image = UIImage(named: "first")
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

