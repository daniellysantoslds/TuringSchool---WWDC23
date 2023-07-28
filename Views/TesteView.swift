//
//  teste.swift
//  TuringSchool
//
//  Created by Danielly Santos Lopes da Silva on 28/07/23.
//

import SwiftUI

struct TesteView: View {
    var body: some View {
        ZStack {
                  Color.blue // Define a cor de fundo da folha para preencher a tela
                  Text("Bem-vindo à aula!")
                      .font(.largeTitle)
                      .foregroundColor(.red)
              }
        .ignoresSafeArea()
              .frame(maxWidth: .infinity, maxHeight: .infinity) // Define o tamanho da folha para ocupar toda a tela
          }
}
struct TesteView_Previews: PreviewProvider {
    static var previews: some View {
        TesteView()
    }
}
