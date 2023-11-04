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
                
                Spacer()
                
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
                
                // List of times
                List {
                    Text("1")
                    Text("2")
                    Text("3")
                    Text("4")
                    Text("5")
                }
                
                // Set the amount of vertical height we want this list to take up
                .frame(height: 300)
                
            }
            .padding()
        }
    }
}

#Preview {
    
    TabView(selection: Binding.constant(3)) {
        
        Text("World Clock")
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
            }
            .tag(1)
        
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
            .tag(2)
        
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
            .tag(3)
        
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
            .tag(4)
        
    }
    // Change the accent colour for the currently active tab item
    .accentColor(.orange)
    
    // Ensure tab items that are not active remain visible
    .preferredColorScheme(.dark)
    
}
