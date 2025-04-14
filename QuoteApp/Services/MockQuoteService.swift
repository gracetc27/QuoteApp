//
//  MockQuoteService.swift
//  QuoteApp
//
//  Created by Grace couch on 14/04/2025.
//
import SwiftUI

struct MockQuoteService: QuoteService {
    func getQuote(url: String) async throws -> Quote {
        return .defaultQuote
    }
}
