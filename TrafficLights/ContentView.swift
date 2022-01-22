//
//  ContentView.swift
//  TrafficLights
//
//  Created by Ilya Pokhodin on 22.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var lightOpacityRed: Double
    @State var lightOpacityYellow: Double
    @State var lightOpacityGreen: Double
    
    @State var buttonText = "START"
    @State var switchCount: Color = .red
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                CircleLight(lightColor: .red, lightOpacity: lightOpacityRed)
                CircleLight(lightColor: .yellow, lightOpacity: lightOpacityYellow)
                    .padding()
                CircleLight(lightColor: .green, lightOpacity: lightOpacityGreen)
                Spacer()
                startButtonPressed
            }
            .padding(30)
        }
    }
    
    private var startButtonPressed: some View {
        Button(action: {
            switchCountСhanged(switchCount: switchCount)
            buttonText = "NEXT" }) {
            Text(buttonText)
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 200.0, height: 70.0)
                .background(AnyView(Capsule().fill(Color.blue)))
                .overlay(RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.white, lineWidth: 4))
        }
    }
    
    func switchCountСhanged(switchCount: Color) {
        switch switchCount {
        case .red:
            lightOpacityRed = 1
            lightOpacityYellow = 0.3
            lightOpacityGreen = 0.3
            self.switchCount = .yellow
        case .yellow:
            lightOpacityRed = 0.3
            lightOpacityYellow = 1
            lightOpacityGreen = 0.3
            self.switchCount = .green
        default:
            lightOpacityRed = 0.3
            lightOpacityYellow = 0.3
            lightOpacityGreen = 1
            self.switchCount = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            lightOpacityRed: 0.3,
            lightOpacityYellow: 0.3,
            lightOpacityGreen: 0.3
        )
    }
}
