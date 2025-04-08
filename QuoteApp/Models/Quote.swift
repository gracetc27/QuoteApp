//
//  Quote.swift
//  QuoteApp
//
//  Created by Grace couch on 08/04/2025.
//

import SwiftUI

struct Quote: Codable {
    let id: String
    let content: String
    let author: String
    let tags: [String]
    let authorSlug: String
    let length: Int
    let dateAdded: String
    let dateModified: String

    enum CodingKeys: String, CodingKey {
        case id
        case content
        case author
        case tags
        case authorSlug
        case length
        case dateAdded
        case dateModified
    }

    static var defaultQuote: Quote {
        Quote(id: "h-47-Kgrf",
              content: "Live long and prosper",
              author: "Spock",
              tags: ["Friendship", "Wisdom"],
              authorSlug: "spock",
              length: 21,
              dateAdded: "2025-04-08",
              dateModified: "2025-04-08")
    }

}

