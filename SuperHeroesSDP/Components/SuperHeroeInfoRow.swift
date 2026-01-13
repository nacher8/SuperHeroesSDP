//
//  SuperHeroeInfoRow.swift
//  SuperHeroesSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 13/1/26.
//

import SwiftUI

struct SuperHeroeInfoRow: View {
    let titulo: String
    let detalle: String
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Text(titulo)
                .font(.title2)
                .fontWeight(.semibold)
            Text(detalle)
                .font(.callout)
            Spacer()
        }
    }
}

#Preview {
    SuperHeroeInfoRow(titulo: "Prueba", detalle: "Detalle Prueba")
}
