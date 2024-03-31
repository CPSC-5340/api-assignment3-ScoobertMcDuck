//
//  CardViewModel.swift
//  Assignment3
//
//  Created by Charlotte Varnum on 3/31/24.
//

import Foundation

class CardViewModel : ObservableObject {
    @Published private(set) var cardsData = [CardModel]()
    private let url = "https://api.magicthegathering.io/v1/cards"
    
    @MainActor
    func fetchData() {
        if let url = URL(string: url) {
            URLSession
                .shared
                .dataTask(with: url) { (cards, reponse, error) in
                    if let error = error {
                        print(error)
                    }
                    else {
                        if let cards = cards {
                            do {
                                let results = try JSONDecoder().decode(CardResults.self, from: cards)
                                self.cardsData = results.cards
                            } catch {
                                print(error)
                            }
                        }
                    }
                }.resume()
        }
    }
}
