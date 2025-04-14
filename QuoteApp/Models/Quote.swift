//
//  Quote.swift
//  QuoteApp
//
//  Created by Grace couch on 08/04/2025.
//

import SwiftUI

struct Quote: Codable, Equatable {
    let quote, author: String

    enum CodingKeys: String, CodingKey {
        case quote, author
    }

    static var defaultQuote: Quote {
        Quote(quote: "urm, what do you mean... why", author: "Kane Buckthorpe")
    }

    static var testQuote: Quote {
        Quote(quote: "testing, testing, 123", author: "Grace Couch")
    }
    typealias Quotes = [Quote]
}

