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
        
        List(scrums) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
        
    }
}

#Preview {
    let scrums: [DailyScrum] = DailyScrum.sampleData
    ScrumsView(scrums: scrums)
}
