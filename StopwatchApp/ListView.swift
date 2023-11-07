//
//  ListView.swift
//  StopwatchApp
//
//  Created by Dexter Ng on 2023-11-06.
//

import SwiftUI

struct ListView: View {
    
    let text: String
    let colour: Color
    let time: String
    
    var body: some View {
        
        HStack {
            
            Text(text)
                .font(Font.system(size: 21))
            
            Spacer()
            
            Text(time)
                .font(Font.system(size: 21))
            
        }
        .foregroundColor(colour)
        
    }
}

#Preview {
    ListView(
        text: "Lap 5",
        colour: .white,
        time: "00:00:45"
    )
    .background(.black)
}
