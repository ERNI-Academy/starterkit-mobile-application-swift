//
//  ItemsPage.swift
//  SwiftERNIStarterKit
//
//  Created by Jeffrey Milanes on 9/1/22.
//

import SwiftUI

struct ItemsPage: View {
    
    @State private var addMode = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<25, id: \.self, content: { i in
                    NavigationLink("(\(i)) item, This is an item description", destination: AboutPage())
                })
            }
            #if os(iOS)
            .toolbar {
                ToolbarItem {
                    Button(action: {}, label: {
                        Label("Add", systemImage: "plus.circle.fill")
                    })
                    .labelStyle(VerticalLabelStyle())
                }
            }
            #endif
            Text("No selected item")
        }
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
    }
}
