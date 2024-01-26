//
//  ContentView.swift
//  x6 lerondQuiCharge
//
//  Created by  Ixart on 30/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Text("75%")
            
            Circle()
                .stroke(lineWidth: 10)
           

            
            Circle()
            
                .trim(from: 0 , to: 0.7)

                .stroke(lineWidth: 10)
                .foregroundColor(.purple)
            
               
           

            
            
                
                
            
            
            
        }

        .frame(width: 400,height: 300)





    }
}

#Preview {
    ContentView()
}
