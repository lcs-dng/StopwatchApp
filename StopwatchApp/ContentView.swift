//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Dexter Ng on 2023-11-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            // First layer (background)
            Color.black
                .ignoresSafeArea()
            
            // Second layer (rest of interface)
            VStack {
                
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundColor(.white)
                
                // Create a circular button
                ZStack {
                    
                    // First layer
                    Circle()
                        .foregroundColor(.gray)
                    .frame(width: 100)
                    
                    // Second layer
                    Circle()
                        .foregroundColor(.black)
                        .frame(width: 93)
                    
                    // Third layer
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: 89)
                    
                    // Forth layer
                    Text("Reset")
                        .foregroundColor(.white)
                        .font(.title2)
                    
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
