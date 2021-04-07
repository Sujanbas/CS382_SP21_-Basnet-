//
//  Items.swift
//  LootLogger
//
//  Created by user191359 on 3/10/21.
//

import UIKit

class Item {
var name: String
var valueInDollars: Int
    var serialNumber: String?
    let dateCreated: Date
    
    init(name: String, serialNumber: String?, valueInDollars: Int) {
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
    }
    convenience init(random: Bool = false) { if random {
    let adjectives = ["Fluffy", "Rusty", "Shiny"]
        let nouns = ["Bear", "Spork", "Mac"]
    let randomAdjective = adjectives.randomElement()!
    let randomNoun = nouns.randomElement()!
    let randomName = "\(randomAdjective) \(randomNoun)"
        let randomValue = Int.random(in: 0..<100)
    let randomSerialNumber =
        UUID().uuidString.components(separatedBy: "-").first!
        self.init(name: randomName ,
      serialNumber: randomSerialNumber ,
      valueInDollars: randomValue)    }
    else {
      self.init(name: "", serialNumber: nil, valueInDollars: 0) }
    }
}
class Item: Equatable {
// ... all the stuff already present for Item
static func ==(lhs: Item, rhs: Item) -> Bool { return lhs.name == rhs.name
&& lhs.serialNumber == rhs.serialNumber
&& lhs.valueInDollars == rhs.valueInDollars && lhs.dateCreated == rhs.dateCreated
} }
