//
//  NewItemPage.swift
//  SwiftERNIStarterKit
//
//  Created by Jeffrey Milanes on 9/1/22.
//

import SwiftUI

struct NewItemPage: View {
    @EnvironmentObject var item: ItemViewModel
    @ObservedObject var newItem: NewItemPageViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack()
            {
                VStack(alignment: .leading)
                {
                    Text("Item")
                    TextField("Item", text: $newItem.name)
                    Text("Description")
                    TextField("Description", text: $newItem.description)
                }
                Spacer()
                HStack(alignment: .center)
                {
                    saveButton
                    cancelButton
                }
            }
            .frame(width: 300, height: 150, alignment: .leading)
            .aspectRatio(contentMode: .fit)
            .padding(20)
        }
    }
}

extension NewItemPage {
    func addItem() {
        let newItem = Item(name: newItem.name, description: newItem.description)
        item.addItem(newItem)
        presentationMode.wrappedValue.dismiss()
    }
    
    var cancelButton: some View {
        Button("Cancel") {
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    @ViewBuilder
    var saveButton: some View {
        if (newItem.activateSave) {
             Button("Save", action: addItem)
        }
    }
}

struct NewItemPage_Previews: PreviewProvider {
    static var previews: some View {
        NewItemPage(newItem: NewItemPageViewModel())
            .environmentObject(ItemViewModel())
    }
}
