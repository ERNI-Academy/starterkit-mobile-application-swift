//
//  ChangeLanguagePage.swift
//  SwiftERNIStarterKit
//
//  Created by Jeffrey Milanes on 9/1/22.
//

import SwiftUI

struct ChangeLanguagePage: View {
    @Binding var lang: String
    
    var body: some View {
        VStack {
                Text("Language")
                    .bold()
                Menu {
                    Button(
                        action: {
                            lang = "en"
                    }, label: {
                        Text("English")
                    })
                    Button(
                        action: {
                            lang = "fil"
                    }, label: {
                        Text("Filipino")
                    })
                    Button(
                        action: {
                            lang = "de"
                    }, label: {
                        Text("German")
                    })
                    Button(
                        action: {
                            lang = "ro"
                    }, label: {
                        Text("Romanian")
                    })
                    Button(
                        action: {
                            lang = "sk"
                    }, label: {
                        Text("Slovak")
                    })
                    Button(
                        action: {
                            lang = "es"
                    }, label: {
                        Text("Spanish")
                    })
                } label: {
                    Label(
                        title: {
                            Text("\(lang)")
                        },
                        icon: {
                            Image(systemName: "plus")
                        }
                    )
                }
        }
        .padding()
    }
}

struct ChangeLanguagePage_Previews: PreviewProvider {
    static var previews: some View {
            VStack{
                Text("Preview in English").foregroundColor(.green)
                PreviewWrapper(lang: .init(initialValue: "en"))
            }
            VStack{
                Text("Preview in Spanish").foregroundColor(.orange)
                PreviewWrapper(lang: .init(initialValue: "es"))
            }
        }
        
        struct PreviewWrapper:View {
            @State(initialValue: "es") var lang: String
            
            var body: some View{
                ChangeLanguagePage(lang: $lang)
                    .environment(\.locale, .init(identifier: lang))
            }
        }
}
