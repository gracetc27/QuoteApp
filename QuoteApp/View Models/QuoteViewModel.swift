//
//  QuoteViewModel.swift
//  QuoteApp
//
//  Created by Grace couch on 08/04/2025.
//

import SwiftUI

@Observable
class QuoteViewModel {
    var quote: Quote = .defaultQuote
    private let urlString = "https://api.api-ninjas.com/v1/quotes"

    enum QuoteError: Error, Equatable {
        case invalidURL
        case noData
        case decodingFailed
    }
    var apiKey: String {
        getApiKey()
    }

    func getRandomQuote() async {
        do {
            quote = try await getQuote(url: urlString)
        } catch {
            print(error)
        }
    }

    private func getQuote(url: String) async throws(QuoteError) -> Quote {
        guard let url = URL(string: url) else {
            throw QuoteError.invalidURL
        }
        var request = URLRequest(url: url)
        request.addValue(apiKey, forHTTPHeaderField: "X-Api-Key")

        let (data, _): (Data, URLResponse)
        do {
            (data, _) = try await URLSession.shared.data(for: request)
        } catch {
            throw QuoteError.noData
        }

        do {
            let decoder = JSONDecoder()
            let newQuote = try decoder.decode([Quote].self, from: data)
            return newQuote[0]
        } catch {
            throw QuoteError.decodingFailed
        }
    }

    private func getApiKey() -> String {
        let url = Bundle.main.url(forResource: "APIKeys", withExtension: "plist")!
        let dict = NSDictionary(contentsOf: url)!
        let quoteKey = dict["QuoteKey"] as! String
        return quoteKey
    }

}
