//
//  SuperHeroInfoView.swift
//  SuperHeroesSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 13/1/26.
//

import SwiftUI

struct SuperHeroeInfoView: View {
    let heroe: SuperHero
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue.opacity(0.6), .orange.opacity(0.6)], startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            VStack {
                Image(heroe.imagen)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(.white, lineWidth: 4)
                    )
                    .shadow(radius: 10)
                
                Text(heroe.apodo)
                    .font(.largeTitle)
                    .bold()
                
                SuperHeroeInfoRow(titulo: "Nombre: ", detalle: heroe.nombreReal)
                    .padding(.top, 26)
                
                SuperHeroeInfoRow(titulo: "Edad: ", detalle: "\(heroe.edad) años")
                
                SuperHeroeInfoRow(titulo: "Poderes: ", detalle: heroe.poderes.map { $0.rawValue }.joined(separator: ", "))
                
                SuperHeroeInfoRow(titulo: "Descripción: ", detalle: heroe.descripcion)
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    SuperHeroeInfoView(heroe: SuperHeroes[0])
}
