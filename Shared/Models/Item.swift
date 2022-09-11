//
//  Item.swift
//  SwiftERNIStarterKit
//
//  Created by Jeffrey Milanes on 9/1/22.
//

import Foundation

struct Item: Identifiable, Codable {
    var id: String = UUID().uuidString
    var name: String
    var description: String
    
    static var sampleData: [Item] {
        [
            Item(name: "Name 1", description: "Description 1"),
            Item(name: "Name 2", description: "Description 2")
        ]
    }
}
