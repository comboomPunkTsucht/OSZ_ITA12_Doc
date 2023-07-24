//
//  ITA_12_Docs_OSZimtApp.swift
//  ITA 12 Docs OSZimt
//
//  Created by mcpeaps_HD on 15/04/2023.
//

import SwiftUI

@main
struct ITA_12_Docs_OSZimtApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            
        }

        .commands {
            MyCommandMenu()
        }

    }
}



struct MyCommandMenu: Commands {
    
    var body: some Commands {
        CommandGroup(before: .importExport) {
            Button("go Back") {}
                .keyboardShortcut("ö", modifiers: .command).disabled(true)
            
            Button("go Forward") {}
                .keyboardShortcut("ä", modifiers: .command).disabled(true)
            
            Button("go Home") {}
                .keyboardShortcut("ü", modifiers: .command).disabled(true)
            
            Button("reload") {}
                .keyboardShortcut("r", modifiers: .command).disabled(true)
        }
    }
}

