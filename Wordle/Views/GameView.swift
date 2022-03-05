//
//  ContentView.swift
//  Wordle
//
//  Created by Ishaan Bhasin on 2/17/22.
//

import SwiftUI

struct GameView: View {
    @EnvironmentObject var dm: WordleDataModel
    var body: some View {
        NavigationView{
            VStack(spacing: 3){
                GuessView(guess: $dm.guesses[0])
                GuessView(guess: $dm.guesses[1])
                GuessView(guess: $dm.guesses[2])
                GuessView(guess: $dm.guesses[3])
                GuessView(guess: $dm.guesses[4])
                GuessView(guess: $dm.guesses[5])
            }
            .frame(width: Global.borderWidth, height: 6 * Global.borderWidth / 5)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button{
                            
                        } label: {
                            Image(systemName: "questionmark.circle")
                        }
                    }
                    ToolbarItem(placement: .principal) {
                        Text("WORDLE")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.primary)
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack{
                            Button{
                                
                            } label: {
                                Image(systemName: "chart.bar")
                            }
                            Button {
                                
                            } label: {
                                Image(systemName: "gearshape.fill")
                            }

                            
                        }
                    }
                }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .environmentObject(WordleDataModel())
    }
}
