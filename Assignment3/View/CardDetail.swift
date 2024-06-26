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
        ScrollView {
            VStack(alignment: .center, spacing: 10) {
                Text(card.name ?? "Name Not Found")
                    .font(.system(size: 30))
                    .padding(.horizontal)
                
                AsyncImage(url: URL(string: ConvertURL(card.imageUrl ?? "https://tinyurl.com/2a5y8wt5")))
                { image in
                    image.resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                    
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 215, height: 300)
                
                
                Text((card.manaCost ?? "Does Not Cost Mana"))
                    .font(.system(size: 20))
                    .padding(.horizontal)
                
                Text((card.power ?? "*") + " / " + (card.toughness ?? "*"))
                    .font(.system(size: 20))
                    .padding(.horizontal)
                
                Text(card.text ?? "")
                    .font(.system(size: 20))
                    .padding(.horizontal)
            }
            
        }
    }
    
    
    func ConvertURL(_ url: String) -> String {
        let http = url
        var comps = URLComponents(string: http)!
        comps.scheme = "https"
        let https = comps.string!
        return https
    }
}

