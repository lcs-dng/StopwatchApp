//
//  CircleButtonView.swift
//  StopwatchApp
//
//  Created by Dexter Ng on 2023-11-02.
//

import SwiftUI

struct CircleButtonView: View {
    var body: some View {
        
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
}

#Preview {
    CircleButtonView()
}
