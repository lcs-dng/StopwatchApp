//
//  CircleButtonView.swift
//  StopwatchApp
//
//  Created by Dexter Ng on 2023-11-02.
//

import SwiftUI

struct CircleButtonView: View {
    
    // MARK: Stored properties
    let buttonColour: Color
    let label: String
    let labelColour: Color
    
    var body: some View {
        
        // Create a circular button
        ZStack {
            
            // First layer
            Circle()
                .foregroundColor(buttonColour)
                .frame(width: 100)
            
            // Second layer
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
            
            // Third layer
            Circle()
                .foregroundColor(buttonColour)
                .frame(width: 89)
            
            // Forth layer
            Text(label)
                .foregroundColor(labelColour)
                .font(.title2)
            
        }
        
    }
}

#Preview {
    CircleButtonView(
        buttonColour: .gray,
        label: "Reset",
        labelColour: .white
    )
}
