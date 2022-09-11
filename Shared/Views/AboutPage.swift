//
//  AboutPage.swift
//  SwiftERNIStarterKit
//
//  Created by Jeffrey Milanes on 9/1/22.
//

import SwiftUI

struct AboutPage: View {
    
    @EnvironmentObject var router: TabRouter
    
    var body: some View {
        VStack(alignment: .center) {
            Image("ernilogo")
                .padding(20)
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    Text("About_Title")
                    .font(.system(size: 30))
                    Text("About_Description")
                    Link("Learn_More", destination: URL(string: "https://developer.apple.com/swift/")!)
                }
            }
        }
        .padding()
    }
}

struct AboutPage_Previews: PreviewProvider {
    static var previews: some View {
        AboutPage()
            .environmentObject(TabRouter())
    }
}
