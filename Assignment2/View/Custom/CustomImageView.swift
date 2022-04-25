//
//  CustomImageView.swift
//  Assinment
//
//  Created by Swapnil Tilkari on 21/04/22.
//

import SwiftUI
import SDWebImageSwiftUI
struct CustomImageView: View {
    
    var url: String
    
    var body: some View {
        
        WebImage(url: URL(string: url))
            .onSuccess { image, data, cacheType in
                
            }
            .resizable()
            .placeholder(Image(systemName: "photo")) // Placeholder Image
            .indicator(.activity) // Activity Indicator
            .transition(.fade(duration: 0.5)) // Fade Transition with duration
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth:.infinity)
            .clipped()
    }
}


