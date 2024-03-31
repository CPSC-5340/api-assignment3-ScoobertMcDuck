//
//  CardDetail.swift
//  Assignment3
//
//  Created by Charlotte Varnum on 3/31/24.
//

import SwiftUI

struct CardDetail: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
                Text("Card Name")
                    .font(.system(size: 30))
                    .padding(.horizontal)
                
                AsyncImage(url: URL(string: "https://example.com/icon.png")) { image in
                    image.resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .frame(width: 215, height: 300)
                } placeholder: {
                    ProgressView()
                }
                
                
                Text("ManaCost")
                    .font(.system(size: 20))
                    .padding(.horizontal)
                
                Text("Power/Toughness")
                    .font(.system(size: 20))
                    .padding(.horizontal)
                
                Text("Text:")
                    .font(.system(size: 20))
                    .padding(.horizontal)
        }
    }
}

#Preview {
    CardDetail()
}
