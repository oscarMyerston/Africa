//
//  CoreImageView.swift
//  Africa
//
//  Created by Oscar David Myerston Vega on 3/07/24.
//

import SwiftUI

struct CoreImageView: View {
    // MARK: - PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    // MARK: - BODY

    var body: some View {

        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())


    }
}

// MARK: - PREVIEW
struct CoreImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoreImageView()
            .previewLayout(.fixed(width: 400, height: 400))
    }
}
