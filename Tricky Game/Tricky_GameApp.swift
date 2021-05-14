//
//  Tricky_GameApp.swift
//  Tricky Game
//
//  Created by Dieter Bergmann on 09.05.21.
//

import SwiftUI

@main
struct Tricky_GameApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}
