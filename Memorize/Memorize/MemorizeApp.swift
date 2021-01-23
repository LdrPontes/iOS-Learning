//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Leandro Pontes Berleze on 18/01/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
