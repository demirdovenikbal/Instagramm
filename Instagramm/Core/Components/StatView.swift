//
//  SwiftUIView.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-07-28.
//

import SwiftUI

struct SwiftUIView: View {
    var stat : Int
    var text : String
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("\(stat)")
                .fontWeight(.semibold)
            Text(text)
        }
    }
}

#Preview {
    SwiftUIView()
}
