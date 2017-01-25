//
//  AlternateTableViewController.swift
//  SearchController
//
//  Created by Victor Shurapov on 01/25/16.
//  Copyright © 2017 Victor Shurapov. All rights reserved.
//

import UIKit

class AlternateTableViewController: UITableViewController {
    
    var search = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.refreshTableView), name: NSNotification.Name.init("searchResultsUpdated"), object: nil)
    }
    
    func refreshTableView(notification: Notification) {
        search = notification.object as! [String]
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return search.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LargeCell", for: indexPath) as! AlternateTableViewCell
        cell.configureCell(countryName:search[indexPath.row])
        return cell
    }
    
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.init("searchResultsUpdated"), object: nil)
    }
}
