//
//  TextViews.swift
//  QuoteApp
//
//  Created by Grace couch on 07/04/2025.
//

import SwiftUI

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

struct BigTextView: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
    }
}
struct NormalTextView: View {
    let text: String
    var body: some View {
        Text(text)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
    }
}
struct BorderedBigTextView: View {
    let text: String
    let lineWidth: CGFloat = 2.0
    let cornerRadius: CGFloat = 10.0
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(.white, lineWidth: lineWidth)
            }
    }
}
struct BorderedNormalTextView: View {
    let text: String
    let lineWidth: CGFloat = 2.0
    let cornerRadius: CGFloat = 10.0
    var body: some View {
        Text(text)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(.white, lineWidth: lineWidth)
            }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        VStack {
            BigTextView(text: "Hello")
            NormalTextView(text: "Hello")
            BorderedBigTextView(text: "Hello")
            BorderedNormalTextView(text: "Hello")
        }

    }
}
