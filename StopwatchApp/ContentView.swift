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
                        buttonColour: Color("Dark Grey"),
                        label: "Reset",
                        labelColour: .white
                    )
                    
                    Spacer()
                    
                    // Create another circular button
                    CircleButtonView(
                        buttonColour: Color("Dark Green"),
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
    
    TabView {
        
        Text("World Clock")
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
            }
        
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
        
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
        
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
        
    }
    // Change the accent colour for the currently active tab item
    .accentColor(.orange)
    
    // Ensure tab items that are not active remain visible
    .preferredColorScheme(.dark)
    
}
