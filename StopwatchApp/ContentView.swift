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
                
                // spacing two circle buttons
                HStack {
                    
                    // Create a circular button
                    CircleButtonView(
                        buttonColour: .gray,
                        label: "Reset",
                        labelColour: .white
                    )
                    
                    Spacer()
                    
                    // Create another circular button
                    CircleButtonView(
                        buttonColour: .brown,
                        label: "Start",
                        labelColour: .green
                    )
                    
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
