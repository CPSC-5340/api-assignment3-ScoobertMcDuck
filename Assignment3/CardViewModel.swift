//
//  CardViewModel.swift
//  Assignment3
//
//  Created by Charlotte Varnum on 3/31/24.
//

import Foundation

class CardViewModel : ObservableObject {
    @Published private(set) var CardsData = [CardModel]()
    private let url = "https://api.magicthegathering.io/v1/cards"
}

func fetchData() {
    
}
