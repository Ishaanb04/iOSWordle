//
//  WordleApp.swift
//  Wordle
//
//  Created by Ishaan Bhasin on 2/17/22.
//

import SwiftUI

@main
struct WordleApp: App {
    @StateObject var dm: WordleDataModel = WordleDataModel()
    var body: some Scene {
        WindowGroup {
            GameView()
                .environmentObject(dm)
        }
    }
}
