//
//  MemoryGame.swift
//  Memorize
//
//  Created by Joao Alves on 21/05/23.
//

import Foundation
 
struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numberPairCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()

        for pairIndex in 0..<numberPairCards {
            let cardContent = createCardContent(pairIndex)
            cards.append(Card(content: cardContent))
            cards.append(Card(content: cardContent))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent 
    }
}
