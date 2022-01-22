//
//  CircleLight.swift
//  TrafficLights
//
//  Created by Ilya Pokhodin on 22.01.2022.
//

import SwiftUI

struct CircleLight: View {
    
    var lightColor: Color
    var lightOpacity: Double
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 130, height: 130)
                .foregroundColor(.black)
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
            Circle()
                .frame(width: 125, height: 125)
                .foregroundColor(lightColor)
                .opacity(lightOpacity)
        }
    }
}

struct CircleLight_Previews: PreviewProvider {
    static var previews: some View {
        CircleLight(lightColor: .red, lightOpacity: 0.5)
    }
}
