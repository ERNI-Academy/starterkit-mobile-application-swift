//
//  ItemsPage.swift
//  SwiftERNIStarterKit
//
//  Created by Jeffrey Milanes on 9/1/22.
//

import SwiftUI

struct ItemsPage: View {
    @EnvironmentObject var item: ItemViewModel
    @State private var modalType: ModalType? = nil
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(item.items) { item in
                    Button {
                        modalType = .view(item)
                    } label: {
                        Text(item.name)
                            .font(.title3)

                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button(action: {
                        modalType = .new
                    }, label: {
                        Label("Add", systemImage: "plus.circle.fill")
                    })
                    .labelStyle(VerticalLabelStyle())
                }
            }
            Text("No_Item")
        }
        .sheet(item: $modalType) { $0 }
    }
}

struct VerticalLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.icon.font(.headline)
            configuration.title.font(.subheadline)
        }
    }
}

struct ItemsPage_Previews: PreviewProvider {
    static var previews: some View {
        ItemsPage()
            .environmentObject(ItemViewModel())
    }
}
