//
//  ContentView.swift
//  Africa
//
//  Created by Oscar David Myerston Vega on 3/07/24.
//

import SwiftUI

struct ContentView: View {

    // MARK: - PROPERTIES


    // MARK: - BODY

    var body: some View {

        NavigationView {
            List {
                CoreImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            } //: LIST
            .navigationTitle("Africa")
            
        }//: NAVIGATION
    }
}


// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
