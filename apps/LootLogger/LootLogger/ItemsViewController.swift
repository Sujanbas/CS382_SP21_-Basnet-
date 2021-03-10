//
//  ItemsViewController.swift
//  LootLogger
//
//  Created by user191359 on 3/10/21.
//

import UIKit
class ItemsViewController: UITableViewController{
    var itemStore: ItemStore!
    
    override func tableView(_ tableView: UITableView ,
    cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    // Get a new or recycled cell
    let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
    // Set the text on the cell with the description of the item
    // that is at the nth index of items, where n = row this cell // will appear in on the table view
    let item = itemStore.allItems[indexPath.row]
    cell.textLabel?.text = item.name
    cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        return cell
    }
}
