//
//  CardModel.swift
//  Assignment3
//
//  Created by Charlotte Varnum on 3/31/24.
//

import Foundation
struct CardResults : Codable {
    let cards : [CardModel]
}

struct CardModel : Codable, Identifiable {
    let id: UUID = UUID()
    let name : String
    let manaCost : String
    let text : String
    let power : String
    let toughness : String
    let imageUrl : String
}
