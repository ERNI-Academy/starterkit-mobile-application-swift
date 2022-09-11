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
    @State(initialValue: "en") var lang: String
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $router.screen) {
                AboutPage()
                    .tag(Screen.about)
                    .environmentObject(router)
                    .tabItem {
                        Label("About", systemImage: "info")
                    }
                    .environment(\.locale, .init(identifier: lang))
                ItemsPage()
                    .tag(Screen.browse)
                    .tabItem {
                        Label("Browse", systemImage: "magnifyingglass")
                    }
                    .environmentObject(ItemViewModel())
                    .environment(\.locale, .init(identifier: lang))
                ChangeLanguagePage(lang: $lang)
                    .tag(Screen.language)
                    .tabItem {
                        Label("Language", systemImage: "globe")
                    }
                    .environment(\.locale, .init(identifier: lang))
            }
        }
    }
}
