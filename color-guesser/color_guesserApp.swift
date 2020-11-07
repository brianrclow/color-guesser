//
//  color_guesserApp.swift
//  color-guesser
//
//  Created by Brian Clow on 11/5/20.
//

import SwiftUI

@main
struct color_guesserApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(newColorText: "RGB(1,2,3)", red: 1, green:2, blue:2, newColor: Color(
                            red:1.0,
                            green:2.0,
                            blue:3.0))
        }
    }
}
