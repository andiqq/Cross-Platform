//
//  macOS_Cross_PlatformApp.swift
//  macOS-Cross-Platform
//
//  Created by Dr. Andreas Plagens on 13.04.22.
//

import SwiftUI

@main
struct macOS_Cross_PlatformApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(InsectData())
        }
    }
}
