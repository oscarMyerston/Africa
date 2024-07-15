//
//  CenterModifier.swift
//  Africa
//
//  Created by Oscar David Myerston Vega on 15/07/24.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
