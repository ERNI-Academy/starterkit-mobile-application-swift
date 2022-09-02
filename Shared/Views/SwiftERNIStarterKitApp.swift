//
//  SwiftERNIStarterKitApp.swift
//  Shared
//
//  Created by Jeffrey Milanes on 9/1/22.
//

import SwiftUI

enum Screen {
    case about
    case browse
    case language
}

final class TabRouter: ObservableObject {
    @Published var screen: Screen = .about
    
    func change(to screen: Screen) {
        self.screen = screen
    }
}

@main
struct SwiftERNIStarterKitApp: App {
    @StateObject var router = TabRouter()
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $router.screen) {
                AboutPage()
                    .tag(Screen.about)
                    .environmentObject(router)
                    .tabItem {
                        Label("About", systemImage: "info")
                    }
                ItemsPage()
                    .tag(Screen.browse)
                    .tabItem {
                        Label("Browse", systemImage: "magnifyingglass")
                    }
                ChangeLanguagePage()
                    .tag(Screen.language)
                    .tabItem {
                        Label("Language", systemImage: "globe")
                    }
            }
            #if os(macOS)
            .toolbar {
                ToolbarItem {
                    if (router.screen == Screen.browse) {
                        Button(action: {}, label: {
                            Label("Add", systemImage: "plus.circle.fill")
                        })
                        .labelStyle(VerticalLabelStyle())
                    }
                }
            }
            #endif
        }
    }
}
