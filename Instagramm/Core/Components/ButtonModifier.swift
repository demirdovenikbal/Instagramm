//
//  ButtonModifier.swift
//  Instagramm
//
//  Created by Ikbal Demirdoven on 2025-07-31.
//

import Foundation
import SwiftUI

struct ButtonModifier : ViewModifier {
    func body(content : Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
