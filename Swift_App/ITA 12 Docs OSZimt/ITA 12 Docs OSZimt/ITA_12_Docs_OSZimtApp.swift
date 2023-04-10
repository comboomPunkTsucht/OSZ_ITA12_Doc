//
//  ITA_12_Docs_OSZimtApp.swift
//  ITA 12 Docs OSZimt
//
//  Created by mcpeaps_HD on 29/03/2023.
//

import SwiftUI

@main
struct ITA_12_Docs_OSZimtApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                
        }
        .commands {
                            MyCommandMenu(goBack: goBack, goForward: goForward, goHome: goHome, reload: reload)
                        }
        
    }
    func goBack() {
        // Your implementation here
    }

    func goForward() {
        // Your implementation here
    }

    func goHome() {
        // Your implementation here
    }

    func reload() {
        // Your implementation here
    }
    }



struct MyCommandMenu: Commands {
    let goBack: () -> Void
    let goForward: () -> Void
    let goHome: () -> Void
    let reload: () -> Void
    
    var body: some Commands {
        CommandGroup(before: .importExport) {
            Button("go Back", action: goBack)
                            .keyboardShortcut("ö", modifiers: .command)
                        
                        Button("go Forward", action: goForward)
                            .keyboardShortcut("ä", modifiers: .command)
                        
                        Button("go Home", action: goHome)
                            .keyboardShortcut("ü", modifiers: .command)
                        
                        Button("reload", action: reload)
                            .keyboardShortcut("r", modifiers: .command)
                    }
    }
}
