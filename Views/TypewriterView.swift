//
//  teste.swift
//  TuringSchool
//
//  Created by Danielly Santos Lopes da Silva on 28/07/23.
//

import SwiftUI

struct TypewriterView: View {
    let text: String
    @State private var animatedText: String = ""
    
    

    var body: some View {
        Text(animatedText)
            .font(.custom("PixelOperatorMonoHB8", size: 30))
            .lineSpacing(30)
            .padding(.leading, 16)
            //.position(y: geometry.size.height / 2)
            .foregroundColor(Color.white)
            .lineSpacing(60)
            .transition(.scale)
            .multilineTextAlignment(.center)
            .onAppear {
                animateText()
            }
    }
    
    private func animateText() {
        for (index, character) in text.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.07) {
                animatedText += String(character)
            }
        }
    }
}
