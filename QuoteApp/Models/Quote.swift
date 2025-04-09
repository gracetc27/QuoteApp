//
//  Quote.swift
//  QuoteApp
//
//  Created by Grace couch on 08/04/2025.
//

import SwiftUI

struct Quote: Codable {
    let quote, author, category: String

    enum CodingKeys: String, CodingKey {
        case quote, author, category
    }

    static var defaultQuote: Quote {
        Quote(quote: "urm, what do you mean... why", author: "Kane Buckthorpe", category: "Panic")
    }
    typealias Quotes = [Quote]
}

