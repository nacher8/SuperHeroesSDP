//
//  SuperHeroeRow.swift
//  SuperHeroesSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 13/1/26.
//

import SwiftUI

struct SuperHeroeRow: View {
    let heroe: SuperHero
    
    var body: some View {
        VStack {
            Image(heroe.imagen)
                .resizable()
                .scaledToFit()
            Text(heroe.apodo)
                .font(.callout)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    SuperHeroeRow(heroe: SuperHeroes[0])
}
