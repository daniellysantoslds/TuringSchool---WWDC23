//
//  CreditsView.swift
//  TuringSchool
//
//  Created by Danielly Santos Lopes da Silva on 03/08/23.
//

import SwiftUI

struct CreditsView: View {
    
    
    @State private var showModal = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack(alignment: .center, spacing: 0) {
                    
                    
                    Text("PIXEL ART: All pixel arts present in this project, including scenarios, characters and elements, were created manually by me, Danielly Santos, using the PiskelApp:tool: https://www.piskelapp.com/")
                        .font(.custom("PixelOperatorMonoHB8", size: 14))
                        .foregroundColor(.white).multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                    
                    Text("FONTS: Font used: PixelOperatorMonoHB8.ttf, created by Jayvee Enaguas (HarvettFox96) and available at https://www.dafont.com/pixel-operator.font .Licensed under Creative Commons Zero (CC0) 1.0. © 2009-2018.")
                        .font(.custom("PixelOperatorMonoHB8", size: 14))
                        .foregroundColor(.white).multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                    
                    Text("MUSIC: This audio file, titled 'Credits Theme [Klepto-Linda]', was created by Not Jam using Renoise software and is licensed under the Creative Commons Attribution v4.0 International. That means you are free to share and adapt this work, provided you credit the original author, Not Jam, and indicate whether you made any changes to the work. For more information about the author and his other works, visit https://not-jam.itch.io/not-jam -music-pack. For more information about this license, visit https://creativecommons.org/licenses/by/4.0/legalcode.")
                        .font(.custom("PixelOperatorMonoHB8", size: 14))
                        .foregroundColor(.white).multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                    
                    Text("REFERENCES")
                        .font(.custom("PixelOperatorMonoHB8", size: 14))
                        .foregroundColor(.white).multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                    
                    Text("Theory of Computation: Turing Machine: Video Used: Theory of Computation: Turing Machine. Created by Ivan Suptitz. Available at https://www.youtube.com/watch?v=--E0oCwH5r8").font(.custom("PixelOperatorMonoHB8", size: 14))
                        .foregroundColor(.white).multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                    
                    
                    
                    HStack {
                        Button(action: {
                            showModal = true
                        }) {
                            Image("restart-button")
                        }
                        .position(x: geometry.size.width * 0.5 , y: geometry.size.height / 9)
                        .fullScreenCover(isPresented: $showModal) {
                            HomeScreenView()
                                .transition(.move(edge: .top))
                                .animation(.easeOut(duration: 0.10))
                        }
                        
                    }
                    
                    
                }.padding(.horizontal, 32).padding(.top, 100)
            }
        }.background(Image("frame-straight").resizable()
            .scaledToFill())
    }
    
    
    
    
    struct CreditsView_Previews: PreviewProvider {
        static var previews: some View {
            CreditsView()
        }
    }
}
