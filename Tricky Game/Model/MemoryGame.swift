//
//  MemoryGame.swift
//  Tricky Game
//
//  Created by Dieter Bergmann on 10.05.21.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    init(numberOfEqualCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for equalCardIndex in 0..<numberOfEqualCards {
            let content = cardContentFactory(equalCardIndex)
            cards.append(Card(content: content, id: equalCardIndex*3))
            cards.append(Card(content: content, id: equalCardIndex*3+1))
            cards.append(Card(content: content, id: equalCardIndex*3+2))
        }
    }
    
    
    func choose(card: Card) {
        print("card choosen: \(card)")
    }
    
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
    
}
