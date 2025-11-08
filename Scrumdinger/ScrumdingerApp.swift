//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Nischal Aryal on 29/10/2025.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var scrums: [DailyScrum] = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
