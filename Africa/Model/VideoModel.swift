//
//  VideoModel.swift
//  Africa
//
//  Created by Eduardo Ceron on 09/09/21.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    
    var thumbnail: String {
        "video-\(id)"
    }
    
}
