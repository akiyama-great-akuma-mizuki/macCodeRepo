//
//  SearchResultTableViewController.swift
//  homework7
//
//  Created by 0commander on 2021/4/17.
//  Copyright © 2021 0commander. All rights reserved.
//

import UIKit

class SearchResultTableViewController: UITableViewController, UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        guard let searchstr = searchController.searchBar.text else {
            return
        }
        if searchstr.isEmpty{return}
        
        switch searchController.searchBar.selectedScopeButtonIndex
        {
        case 0:
            filterStus = allStus.filter{(stu) -> Bool in
                return stu.name.contains(searchstr) || stu.address.contains(searchstr)
            }
        case 1:
            filterStus = allStus.filter{(stu) -> Bool in
                return stu.name.contains(searchstr)
            }
        case 2:
            filterStus = allStus.filter{(stu) -> Bool in
                return stu.address.contains(searchstr)
            }
        default:
            return
        }
        tableView.reloadData()
    }
    
    
    var allStus:[Student] = []
    var filterStus:[Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "mastercell")
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filterStus.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mastercell", for: indexPath)
        cell.textLabel?.text = filterStus[indexPath.row].name


        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let detailVc = main.instantiateViewController(withIdentifier: "detailvc") as! DetailViewController
        let nav = self.presentingViewController?.navigationController
        detailVc.student = filterStus[indexPath.row]
        detailVc.isAdd = false
        nav?.pushViewController(detailVc, animated: true)
    }

}
