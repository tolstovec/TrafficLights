//
//  TrafficLightsApp.swift
//  TrafficLights
//
//  Created by Ilya Pokhodin on 22.01.2022.
//

import SwiftUI

@main
struct TrafficLightsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(lightOpacityRed: 0.3, lightOpacityYellow: 0.3, lightOpacityGreen: 0.3)
        }
    }
}
