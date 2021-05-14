//
//  EmojiMemoryGame.swift
//  Tricky Game
//
//  Created by Dieter Bergmann on 10.05.21.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    
    // MARK: - Initialisation
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🚒", "🚌", "🚙"]
        return MemoryGame<String>(numberOfEqualCards: emojis.count) { equalCardIndex in
            return emojis[equalCardIndex]
        }
    }
    
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    
    
    // MARK: - Intent(s)    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}

