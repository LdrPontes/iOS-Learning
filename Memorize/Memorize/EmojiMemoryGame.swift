//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Leandro Pontes Berleze on 22/01/21.
//

import SwiftUI

class EmojiMemoryGame {
    //private(set) var model: MemoryGame<String>
    /*private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 2, cardContentFactory: { pairIndex in
     "🥶"
     }
     )*/
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["😎", "🥵", "🎃", "😇", "😱", "😴", "😳", "🥰", "🤣", "🤪"]
        return MemoryGame<String>(numberOfPairsOfCards: 2) { pairIndex in emojis[pairIndex]}
    }
    
    
    //MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
