//
//  ScrumsVIew.swift
//  Scrumdinger
//
//  Created by Nischal Aryal on 03/11/2025.
//

import SwiftUI
import ThemeKit

struct ScrumsView: View {
    
    let scrums: [DailyScrum]
    
    var body: some View {
        
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")

            }
        }
        
    }
}

#Preview {
    let scrums: [DailyScrum] = DailyScrum.sampleData
    ScrumsView(scrums: scrums)
}
