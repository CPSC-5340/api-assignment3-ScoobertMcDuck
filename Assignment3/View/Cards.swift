//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

var cardName = ""

struct Cards: View {
    
    @ObservedObject var cardsvm = CardViewModel()
    var body: some View {
        
            NavigationStack {
                List {
                    ForEach(cardsvm.cardsData) { card in
                        NavigationLink {
                            CardDetail(card: card)
                        } label: {
                            Text(card.name ?? "***")
                        }
                    }
                }
                .listStyle(.grouped)
                .navigationTitle("MTG Cards")

            }
            .task() {
                cardsvm.fetchData()
            }
            
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Cards()
    }
}
