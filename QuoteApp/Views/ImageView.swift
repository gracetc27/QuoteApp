//
//  ImageView.swift
//  QuoteApp
//
//  Created by Grace couch on 09/04/2025.
//

import SwiftUI

struct ImageView: View {
    var image: String
    var body: some View {

        Image(image)
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

#Preview {
    ImageView(image: eclipse)
}
