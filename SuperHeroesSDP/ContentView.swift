//
//  ContentView.swift
//  SuperHeroesSDP
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 10/1/26.
//

import SwiftUI

struct ContentView: View {
    let superHeroes: [SuperHero]
    let adaptativeItems: [GridItem] = [GridItem(.adaptive(minimum: 110))]
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.blue.opacity(0.6), .orange.opacity(0.6)], startPoint: .bottom, endPoint: .top)
                    .ignoresSafeArea()

                ScrollView {
                    VStack {
                        LazyVGrid(columns: adaptativeItems) {
                            ForEach (superHeroes) { heroe in
                                NavigationLink(value: heroe) {
                                    SuperHeroeRow(heroe: heroe)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                    }
                    .navigationTitle("Super Heroes")
                    .safeAreaPadding()
                    .navigationDestination(for: SuperHero.self) { heroe in
                        SuperHeroeInfoView(heroe: heroe)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView(superHeroes: SuperHeroes)
}
