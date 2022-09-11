//
//  ItemViewModel.swift
//  SwiftERNIStarterKit
//
//  Created by Jeffrey Milanes on 9/1/22.
//

import Foundation

class ItemViewModel: ObservableObject {
    @Published var items:[Item] = []
    
    init() {
        loadItems()
    }
    
    func addItem(_ item: Item) {
        if (item.name != "") {
            items.append(item)
            Log.info("Add Items")
        }
    }
    
    func loadItems() {
        items = Item.sampleData
        Log.info("Load Items")
    }
}
