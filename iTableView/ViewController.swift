//
//  ViewController.swift
//  iTableView
//
//  Created by Martin Guilbaud on 06/05/2015.
//  Copyright (c) 2015 tintamarre. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    // the data to display
    let items = ["foo", "bar", "baz"]
    
    /* `UITableView` consists of sections and rows
    default is a single section table, i.e., a plain list
    method returns the number of rows in this default section */
    override func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int)
        -> Int {
            return self.items.count
    }
    
    /* `UITableViewCell` represent individual table cells
    table cells are reused
    a unique identifier is used to group reusable cells
    returns a cell for a given section and row */
    override func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let item = self.items[indexPath.row]
            
            let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell", forIndexPath: indexPath) as! UITableViewCell
            cell.textLabel!.text = item
            return cell
    }
}

