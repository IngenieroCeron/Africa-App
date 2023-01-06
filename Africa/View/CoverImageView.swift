//
//  CoverImageView.swift
//  Africa
//
//  Created by Eduardo Ceron on 25/08/21.
//

import SwiftUI

struct CoverImageView: View {
    
    // MARK: - PROPERTIES
    
    let coverImage: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(coverImage) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//: ForEach Loop
        }//: TabView
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK: - PREVIEW
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
