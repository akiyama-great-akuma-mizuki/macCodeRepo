//
//  ThirdTableViewController.swift
//  
//
//  Created by 0commander on 2021/4/10.
//

import UIKit

class ThirdTableViewController: UITableViewController {

    let products = [
        ["name":"j32","detail":"jsd32G"],
        ["name":"j24","detail":"jsd24G"],
        ["name":"j16","detail":"jsd16G"],
        ["name":"j32","detail":"jsd32G"],
        ["name":"j24","detail":"jsd24G"],
        ["name":"j16","detail":"jsd16G"]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

       let xib = UINib(nibName: "CustomTableViewCell",bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: "cell3")
        tableView.rowHeight = 160
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return products.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! CustomTableViewCell
        cell.TitleLabel.text = products[indexPath.row]["name"]
        cell.DetailLabel.text = products[indexPath.row]["detail"]

        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
