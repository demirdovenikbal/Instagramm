//
//  TextFieldModifier.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-07-31.
//

import Foundation
import SwiftUI

struct TextFieldModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
