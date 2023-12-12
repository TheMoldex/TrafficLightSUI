//
//  ChangeLightButton.swift
//  suiTest
//
//  Created by Денис Сташков on 12.12.2023.
//

import SwiftUI

struct ChangeLightButton: View {
   @Binding var currentColor: TrafficLightColor?
    
    var body: some View {
        Button(action: {
            switch currentColor {
            case .red:
                currentColor = .yellow
            case .yellow:
                currentColor = .green
            case .green:
                currentColor = .red
            case .none:
                currentColor = .red
            }
        }) {
            Text(currentColor == nil ? "START" : "NEXT")
        }
        .frame(width:200, height: 50)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.blue)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.white, lineWidth: 4)
                )
        )
        .foregroundColor(.white)
        .font(.title)
    }
}

#Preview {
    ZStack {
        
        Color.black
        ChangeLightButton(currentColor: .constant(.green))
    }
}
