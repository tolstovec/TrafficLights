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
            ContentView(lightOpacityRed: 0.5, lightOpacityYellow: 0.5, lightOpacityGreen: 0.5)
        }
    }
}
