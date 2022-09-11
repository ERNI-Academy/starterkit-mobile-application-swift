//
//  ModalType.swift
//  SwiftERNIStarterKit
//
//  Created by Jeffrey Milanes on 9/1/22.
//

import SwiftUI

enum ModalType: Identifiable, View {
    case new
    case view(Item)
    var id: String {
        switch self {
        case .new:
            return "new"
        case .view:
            return "view"
        }
    }
    
    var body: some View {
        switch self {
        case .new:
            return NewItemPage(newItem: NewItemPageViewModel())
            
        case .view(let item):
            return NewItemPage(newItem: NewItemPageViewModel(item))
        }
    }
}
