//
//  QuoteAppTests.swift
//  QuoteAppTests
//
//  Created by Grace couch on 07/04/2025.
//

import Testing
@testable import QuoteApp

struct QuoteAppTests {

    @Test func successGetRandomQuoteUpdateQuote() async throws {
        let sut = QuoteViewModel(service: MockQuoteService())
        #expect(sut.quote == .defaultQuote)

        try await sut.getRandomQuote()

        let expected = Quote.testQuote

        #expect(sut.quote == expected)
    }

    @Test func failGetRandomQuoteUpdateQuote() async throws {
        let sut = QuoteViewModel(service: FailureMockQuoteService())
        #expect(sut.quote == .defaultQuote)

        await #expect(throws: QuoteError.noData) {
            try await sut.getRandomQuote()
        }
        #expect(sut.quote == .defaultQuote)
    }

    struct FailureMockQuoteService: QuoteService {
        func getQuote() async throws(QuoteError) -> Quote {
            throw .noData
        }
    }

}
