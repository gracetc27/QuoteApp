//
//  QuoteAppApp.swift
//  QuoteApp
//
//  Created by Grace couch on 07/04/2025.
//

import SwiftUI

@main
struct QuoteAppApp: App {
    @State private var viewModel = QuoteViewModel(service: APINinjasQuoteService())
    var body: some Scene {
        WindowGroup {
            QuoteView()
                .environment(viewModel)
        }
    }
}
