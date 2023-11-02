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
                CircleButtonView()
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
