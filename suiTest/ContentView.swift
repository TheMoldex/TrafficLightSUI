//
//  ContentView.swift
//  suiTest
//
//  Created by Денис Сташков on 12.12.2023.
//

import SwiftUI

//enum TrafficLightColor {
//    case red, yellow, green
//}


struct ContentView: View {
    @State var currentColor: TrafficLightColor = .red
    
    var body: some View {
        ZStack{ 
            LinearGradient(
            gradient: Gradient(colors: [Color.blue, Color.red]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20){
                TrafficLightHead(colorTraffic: .red, isOn: currentColor == .red)
                TrafficLightHead(colorTraffic: .yellow, isOn: currentColor == .yellow)
                TrafficLightHead(colorTraffic: .green, isOn: currentColor == .green)
                Spacer()
                ChangeLightButton(currentColor: $currentColor)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
