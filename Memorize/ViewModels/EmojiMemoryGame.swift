//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Joao Alves on 21/05/23.
//

import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["❤️", "🖤", "😍", "😎", "😉", "👽", "😈", "🤓", "🖕", "🎄", "🌚", "🎮"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberPairCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
