//
//  ChangeLanguagePage.swift
//  SwiftERNIStarterKit
//
//  Created by Jeffrey Milanes on 9/2/22.
//

import SwiftUI

struct ChangeLanguagePage: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Language")
                    .bold()
                    .foregroundColor(.white)
            }
        }
    }
}

struct ChangeLanguagePage_Previews: PreviewProvider {
    static var previews: some View {
        ChangeLanguagePage()
    }
}
