//
//  CardDetail.swift
//  Assignment3
//
//  Created by Charlotte Varnum on 3/31/24.
//

import SwiftUI

struct CardDetail: View {
    
    var card: CardModel
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text(card.name ?? "?")
                    .font(.system(size: 30))
                    .padding(.horizontal)
                
            AsyncImage(url: URL(string: card.imageUrl ?? "https://example.com/icon.png")) { image in
                    image.resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 215, height: 300)
                
                
            Text(card.manaCost ?? "?")
                    .font(.system(size: 20))
                    .padding(.horizontal)
                
            Text((card.power ?? "?") + " / " + (card.toughness ?? "?") )
                    .font(.system(size: 20))
                    .padding(.horizontal)
                
            Text(card.text ?? "?")
                    .font(.system(size: 20))
                    .padding(.horizontal)
        }
    }
}

