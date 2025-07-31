//
//  SwiftUIView.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-07-28.
//

import SwiftUI

struct StatView: View {
    var stat : Int
    var title : String
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("\(stat)")
                .fontWeight(.semibold)
            Text(title)
        }
    }
}

#Preview {
    StatView(stat: 68, title: "posts")
}
