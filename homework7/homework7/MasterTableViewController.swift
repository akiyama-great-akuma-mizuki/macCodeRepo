//
//  MasterTableViewController.swift
//  homework7
//
//  Created by 0commander on 2021/4/17.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {

    
    let jsonClass = JsonFileManager<Student>(filename: "stu")
    
    var searchC : UISearchController!

    override func viewDidLoad() {
        super.viewDidLoad()

       jsonClass.load()
        
        let resultC = SearchResultTableViewController()
        resultC.allStus = self.jsonClass.Records
        
        searchC = UISearchController(searchResultsController: resultC)
        
        let searchbar = searchC.searchBar
        
        searchbar.scopeButtonTitles = ["all","name","address"]
        searchbar.placeholder = "Enter a item"
        searchbar.sizeToFit()
        tableView.tableHeaderView = searchbar
        searchC.searchResultsUpdater = resultC
        self.definesPresentationContext = true
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jsonClass.Records.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mastercell", for: indexPath)

        // Configure the cell...
        let stu = jsonClass.Records[indexPath.row]
        cell.textLabel?.text = stu.name;
        cell.detailTextLabel?.text = stu.address;

        return cell
    }
 

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            jsonClass.Records.remove(at: indexPath.row)
            jsonClass.Save()
            tableView.deleteRows(at: [indexPath], with: .fade)

        }
    }
    

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

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        guard let detailViewController =  segue.destination as? DetailViewController  else {return}
        
        print(detailViewController)
        if segue.identifier == "edit"{
            if let indexPath = tableView.indexPathForSelectedRow{
                detailViewController.student = jsonClass.Records[indexPath.row]
                detailViewController.isAdd = false
            }
        }
        else if segue.identifier == "add"{
            
            detailViewController.student = Student()
            detailViewController.isAdd = true
        }
        
    }
    @IBAction func prepareForUnwind(segue : UIStoryboardSegue){
        //save file
        guard let detailViewController = segue.source as? DetailViewController  else {return}
        if detailViewController.isAdd == true{
            
            jsonClass.Records.append(detailViewController.student!)
        }
        jsonClass.Save()
    }

}
