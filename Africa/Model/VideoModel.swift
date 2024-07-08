//
//  VideoModel.swift
//  Africa
//
//  Created by Oscar David Myerston Vega on 5/07/24.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String

    // Computer property
    var thumbnail: String {
        "video-\(id)"
    }
}
