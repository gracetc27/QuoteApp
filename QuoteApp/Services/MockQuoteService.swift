//
//  MockQuoteService.swift
//  QuoteApp
//
//  Created by Grace couch on 14/04/2025.
//
import SwiftUI

struct MockQuoteService: QuoteService {
    func getQuote() async throws -> Quote {
        return .testQuote
    }
}
