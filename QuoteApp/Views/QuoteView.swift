//
//  QuoteView.swift
//  QuoteApp
//
//  Created by Grace couch on 07/04/2025.
//

import SwiftUI

struct QuoteView: View {
    @State private var quoteViewModel = QuoteViewModel()
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                BigTextView(text: "Quote of the day!")
                Spacer()
                BigTextView(text: quoteViewModel.quote.quote)
                Spacer()
                BorderedNormalTextView(text: "Tap for Quote")
                    .onTapGesture {
                        Task {
                            await quoteViewModel.getRandomQuote()
                        }
                    }
            }
            .padding()
        }
    }
}

#Preview {
    QuoteView()
}
