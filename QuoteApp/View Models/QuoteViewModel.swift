//
//  QuoteViewModel.swift
//  QuoteApp
//
//  Created by Grace couch on 08/04/2025.
//

import SwiftUI

@Observable
class QuoteViewModel {
    var service: QuoteService
    var quote: Quote = .defaultQuote

    init(service: QuoteService) {
        self.service = service
    }

    func getRandomQuote() async throws(QuoteError) {
        do {
            quote = try await service.getQuote()
        } catch {
            throw .noData
        }
    }

}
