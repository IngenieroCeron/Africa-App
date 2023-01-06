//
//  HeadingView.swift
//  Africa
//
//  Created by Eduardo Ceron on 30/08/21.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PROPERTIES
    
    var headingIMage: String
    var headingText: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image(systemName: headingIMage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}
// MARK: - PREVIEW
struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingIMage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
