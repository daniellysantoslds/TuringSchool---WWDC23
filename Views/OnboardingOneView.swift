//
//  OnboardingOneView.swift
//  TuringSchool
//
//  Created by Danielly Santos Lopes da Silva on 28/07/23.
//

import SwiftUI

struct OnboardingOneView: View {
    
    @State private var showButton = true
    
    @State private var showNavigation = false
    
    @State private var isClassViewPresented = false
    
    
    @State private var flow: [ElementTexts] = [
        ElementTexts(identifier: "onboarding1", text: "Hey guys! My name is Alan Turing and I will be your new math teacher. In addition to being a mathematician, I am a computer scientist, cryptanalyst, philosopher and biologist, born in London."),
        ElementTexts(identifier: "onboarding2", text: "oii tudo"),
        ElementTexts(identifier: "onboarding3", text: "oii tudo bem"),
        
    ];
    
    @State private var flowCurrentIndex = 0;
    
    
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                GeometryReader { geometry in
                    VStack {
                        Text(flow[flowCurrentIndex].text)
                            .font(.custom("PixelOperatorMonoHB8", size: 30))
                            .lineSpacing(20)
                            .frame(width: 1000, height: 730, alignment: .center)
                            .foregroundColor(Color.white)
                            .transition(.scale)
                          
                            
                                
                                if showButton {
                                    if (flowCurrentIndex == 0) {
                                        Button(action: {
                                            flowCurrentIndex +=  1
                                            
                                        }) {
                                            Text("next")
                                                .foregroundColor(Color("Yellow-0"))
                                                .font(.custom("PixelOperatorMonoHB8", size: 30))
                                        }
                                        .padding(.leading, 300)
                                        
                                    }
                                    
                                    else if (flowCurrentIndex == 1) {
                                        Button(action: {
                                            showNavigation.toggle()
                                            flowCurrentIndex += 1
                                            
                                        }) {
                                            
                                            Text("next")
                                                .foregroundColor(Color("Yellow-0"))
                                                .font(.custom("PixelOperatorMonoHB8", size: 30))
                                        }
                                        .padding(.leading, 20)
                                        
                                        
                                    }
                                    
                                    
                                    else if (flowCurrentIndex == 2) {
                                        Button(action: {
                                            isClassViewPresented = true
                                            
                                        }) {
                                            Text("go to class")
                                                .foregroundColor(Color("Yellow-0"))
                                                .font(.custom("PixelOperatorMonoHB8", size: 24))
                                        }
                                        .fullScreenCover(isPresented: $showNavigation, content: {
                                            PopUpView().animation(.easeIn(duration: 0.8))
                                        })
                                    }
                                    
                                    
                                }
                                
                                
                            }
                            .padding(.leading, 100)
                        
                    }
                    
                    
                    .background(
                        Image("frame")
                            .resizable()
                            .frame(width:geometry.size.width, height:  geometry.size.height )
                    )
                    .frame(maxWidth: geometry.size.width * 0.95, maxHeight:  geometry.size.height * 0.90).position(x: geometry.size.width/2, y: geometry.size.height/2)
                    
                    
                    
                }
            }
            .background(Image("wall")
                .resizable()
                .scaledToFill())
            .ignoresSafeArea()
        }
 }
        
        
    
    
    
    
    struct OnboardingOneView_Previews: PreviewProvider {
        static var previews: some View {
            OnboardingOneView()
        }
    }
    
    
    
    
    

