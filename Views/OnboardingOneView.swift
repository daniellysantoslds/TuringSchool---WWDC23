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
        ElementTexts(identifier: "onboarding1", text: "oiiiiiiiiiiii"),
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
                            .lineSpacing(5)
                            .frame(width: 800, height: 430, alignment: .leading)
                            .foregroundColor(Color.white)
                        
                        if showButton {
                            if (flowCurrentIndex == 0) {
                                Button(action: {
                                    flowCurrentIndex +=  1
                                    
                                }) {
                                    Text("next")
                                        .foregroundColor(Color("Yellow-0"))
                                        .font(.custom("PixelOperatorMonoHB8", size: 24))
                                }
                                
                            }
                            
                            else if (flowCurrentIndex == 1) {
                                Button(action: {
                                    showNavigation.toggle()
                                    flowCurrentIndex += 1
                                    
                                }) {
                                    Text("next")
                                        .foregroundColor(Color("Yellow-0"))
                                        .font(.custom("PixelOperatorMonoHB8", size: 24))
                                }
                                
                            }
                            
                            else if (flowCurrentIndex == 2) {
                                Button(action: {
                                    isClassViewPresented = true
                                    
                                }) {
                                    Text("go to class")
                                        .foregroundColor(Color("Yellow-0"))
                                        .font(.custom("PixelOperatorMonoHB8", size: 24))
                                }
                                .sheet(isPresented: $isClassViewPresented) {
                                   PopUpView()
                                       // .edgesIgnoringSafeArea(.all)
                                }
                                
                                
                            }
                            
                        }
                    }
                    
                    
                    .background(
                        Image("frame")
                            .resizable()
                            .frame(width:geometry.size.width, height:  geometry.size.height )
                    )
                    .frame(maxWidth: geometry.size.width * 0.95, maxHeight:  geometry.size.height * 0.90).position(x: geometry.size.width/2, y: geometry.size.height/2)
                    
                    Image("turin").resizable()
                        .frame(width: 180, height: 180)
                        .alignmentGuide(.top) { d in d[.top] }
                        .alignmentGuide(.leading) { d in d[.leading] }
                        .offset(x: geometry.size.width / 35,  y: geometry.size.height - 195)
                    
                }
            }
            .background(Image("wall")
                .resizable()
                .scaledToFill())
        }
        
    }
}
        
        struct OnboardingOneView_Previews: PreviewProvider {
            static var previews: some View {
                OnboardingOneView()
            }
        }
        
        
        
    

