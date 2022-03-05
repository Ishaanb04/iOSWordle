//
//  ColorExtension.swift
//  Wordle
//
//  Created by Ishaan Bhasin on 3/5/22.
//

import SwiftUI

extension Color{
    static let theme = ColorTheme()
}

struct ColorTheme{
    let wrong = Color("wrong")
    let misplaced = Color("misplaced")
    let correct = Color("correct")
    let unused = Color("unused")
    let sysColor = Color(.systemBackground)
}
