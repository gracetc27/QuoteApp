//
//  SelectImageView.swift
//  QuoteApp
//
//  Created by Grace couch on 09/04/2025.
//

import SwiftUI

struct SelectImageView: View {
   @State private var image: String = eclipse
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
            .onTapGesture {
                image = imageArray.randomElement() ?? eclipse
            }
    }
}

#Preview {
    SelectImageView()
}
