//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Oscar David Myerston Vega on 4/07/24.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: Animal

    var body: some View {

        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                } //: LOOP
            } //: HSTACK
        } //: SCROLL

    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
    }
}
