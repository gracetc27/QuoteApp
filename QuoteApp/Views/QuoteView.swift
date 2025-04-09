//
//  QuoteView.swift
//  QuoteApp
//
//  Created by Grace couch on 07/04/2025.
//

import SwiftUI

struct QuoteView: View {
    @State private var quoteViewModel = QuoteViewModel()
    @State private var image: String = eclipse
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                BigTextView(text: "Quote of the day!")
                Spacer()

                ImageView(image: image)
                    .overlay {
                        BigTextView(text: quoteViewModel.quote.quote)
                            .padding()
                            .minimumScaleFactor(0.1)
                    }
                    .padding()
                HStack {
                    Spacer()
                    Image(fireSample)
                        .resizable()
                        .frame(width: 150, height: 30)
                        .mask {
                            Text(quoteViewModel.quote.author)
                        }
                }
                Spacer()
                BorderedNormalTextView(text: "Tap for Quote")
                    .onTapGesture {
                        image = imageArray.randomElement() ?? eclipse
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
