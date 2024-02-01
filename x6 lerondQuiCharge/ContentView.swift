//
//  ContentView.swift
//  x6 lerondQuiCharge
//
//  Created by  Ixart on 30/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var Charge: Double = 10.0
    @State private var progress: Double = 10.0
    
    private func updateCharge() {
           Charge = progress * 10 // calcule pour mettre le liens  le slider et text
       } // FIN FUNC

    
    
    var body: some View {
        ZStack {
            Text("\(Charge)")
                .font(.largeTitle)
            
            Circle() // PREMIER CERCLE
                .stroke(lineWidth: 10)
            Circle() // DEUXIEME CERLCE
                .trim(from: 0, to: progress)
                .stroke(lineWidth: 10) // EPAISSEUR DE LA LINE ROUGE (largeur)
                .foregroundColor(.purple)
                .rotationEffect(.degrees(-90))
        } // FIN ZSTACK
        Slider(value: $progress, in: 0...1) { _ in
            updateCharge()
        } // fin SLIDER
    }//  fin struct
} // fin BODY
    #Preview {
        ContentView()
    }
