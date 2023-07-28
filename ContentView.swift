//
//  ContentView.swift
//  TuringSchool
//
//  Created by Danielly Santos Lopes da Silva on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .font(.custom("PixelOperatorMonoHB8", size: 40))
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
