//
//  Guess.swift
//  Wordle
//
//  Created by Ishaan Bhasin on 3/5/22.
//

import SwiftUI

struct Guess{
    let index: Int
    let word = "     "
    var bgColor = [Color](repeating: Color.theme.sysColor, count: 5)
    var cardFlipped = [Bool](repeating: false, count: 5)
    var guessLetters: [String]{
        word.map {String($0)}
    }
}
