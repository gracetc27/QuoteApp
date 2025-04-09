//
//  SelectImageView.swift
//  QuoteApp
//
//  Created by Grace couch on 09/04/2025.
//

import SwiftUI

struct SelectImageView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Image(eclipse)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.white, lineWidth: 2)
                }
                .padding()
        }
    }
}

#Preview {
    SelectImageView()
}
