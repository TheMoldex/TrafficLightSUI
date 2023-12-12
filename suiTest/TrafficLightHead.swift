//
//  TrafficLightHead.swift
//  suiTest
//
//  Created by Денис Сташков on 12.12.2023.
//

import SwiftUI

struct TrafficLightHead: View {
    let colorTraffic: TrafficLightColor
    let isOn: Bool
    

    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(isOn ? getColor() : .gray)
            .overlay(Circle()
                .stroke(Color.white, lineWidth: 4)
            )
    }
    
    private func getColor() -> Color {
        switch colorTraffic {
        case .red:
                .red
        case .yellow:
                .yellow
        case .green:
                .green
        }
    }
}

#Preview {
    ZStack{
        Color.black
        TrafficLightHead(colorTraffic: .green, isOn: true)
    }
}
