//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Nischal Aryal on 08/11/2025.
//

import SwiftUI
import ThemeKit

struct ThemeView: View {
    
    let theme: Theme
    
    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
            .foregroundStyle(theme.accentColor)
    }
}

#Preview {
    ThemeView(theme: .buttercup)
}
