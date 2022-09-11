//
//  NewItemPageViewModel.swift
//  SwiftERNIStarterKit
//
//  Created by Jeffrey Milanes on 9/1/22.
//

import Foundation

class NewItemPageViewModel: ObservableObject {
    @Published var name = ""
    @Published var description = ""
    var id: String?
    
    var activateSave: Bool {
        id == nil
    }
    
    init() {}
    
    init(_ currentItem: Item) {
        self.name = currentItem.name
        self.description = currentItem.description
        id = currentItem.id
    }
}
