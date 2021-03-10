//
//  ItemStore.swift
//  LootLogger
//
//  Created by user191359 on 3/10/21.
//

import UIKit
class ItemStore {
var allItems = [Item]()
    init() {
    for _ in 0..<5 {
    createItem()
    
    }
}
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
    return newItem }
}

