//
//  InsectFactView.swift
//  Africa
//
//  Created by Oscar David Myerston Vega on 5/07/24.
//

import SwiftUI

struct InsectFactView: View {
    // MARK: - PROPERTIES
    let animal: Animal

    // MARK: - BODY

    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minWidth: 148, idealHeight: 168, maxHeight: 180)
        } //: BOX
    }

}

// MARK: - PREVIEW
struct InsectFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsectFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
