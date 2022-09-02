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
                    Text("Start developing now")
                    .font(.system(size: 30))
                    Text("This starterkit offers a IOS and MacOS application made with Swift")
                    Button {
                    
                    } label: {
                        Text("Learn more")
                    }
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
