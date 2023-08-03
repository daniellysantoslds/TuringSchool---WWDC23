////
////  HomeScreenView.swift
////  TuringSchool
////
////  Created by Danielly Santos Lopes da Silva on 28/07/23.
////

import SwiftUI

struct HomeScreenView: View {
    
    @State private var showModal = false
    @State private var showButton = false
    @State private var opacity: Double = 0.0
    @State private var rectanglePosition = CGPoint(x: 0, y: 0)
    
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                ZStack(alignment: .bottom) {
                    
                    
                    Image("floor")
                        .resizable()
                        .ignoresSafeArea()
                    
                        Image("school")
                        .resizable()
                    
                        .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.8)
                           .position(x: UIScreen.main.bounds.width * 0.2, y: UIScreen.main.bounds.height * 0.77)
                           .offset(x: -UIScreen.main.bounds.width * 0.05)
                             
                    
                    GifView().offset(x: rectanglePosition.x, y: rectanglePosition.y)
//
                        .animation(.linear(duration: 5))
                        .onAppear {
                            self.rectanglePosition = CGPoint(x: -geometry.size.width / 1.5, y: 0)
                          
                        }
                        .alignmentGuide(.trailing) { d in d[.trailing] }
                        .offset(x: geometry.size.width / 2.60,  y: -143)


             
                        .onAppear{
                            music(music: "sound")
                        }
                    
                }
                
                Text("Turing School")
                    .font(.custom("PixelOperatorMonoHB8", size: 30))
                    .foregroundColor(.white)
                    .opacity(opacity)
                    .animation(.easeInOut(duration: 1.5))
                    .onAppear {
                        withAnimation {
                            self.opacity = 1.0                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.1) {
                            withAnimation{
                                self.showButton = true
                            }
                        }
                    }
                
                    .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.17)
                
                if showButton {
                    Button(action: {
                        showModal = true
                    }) {
                        Image("play-button")
                    }
                    .frame(width: 50, height: 50)
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                    .edgesIgnoringSafeArea(.all)
                    .fullScreenCover(isPresented: $showModal) {
                        OnboardingOneView()
                            .transition(.move(edge: .top))
                            .animation(.easeOut(duration: 0.5))
                    }
                }
                
            }
        }
        .background(Image("sky").resizable().scaledToFill())
        .edgesIgnoringSafeArea(.all)
        
        
    }
    
    
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
