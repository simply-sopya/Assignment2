//
//  GridViewCell.swift
//  Assignment2
//
//  Created by Swapnil Tilkari on 24/04/22.
//

import SwiftUI

struct GridViewCell: View {
    @Binding var gridObj : GridModel
    
    
    var body: some View {
        
        VStack(alignment:.leading,spacing: 0) {
            
            VStack(alignment:.center,spacing: 10) {
                
                
                
                CustomImageView(url: gridObj.image)
                    .frame(height: 70)
                
                Text(gridObj.title)
                    .font(.system(size: 12, weight: .bold))
                    .fixedSize(horizontal: false, vertical: true)
                    .lineLimit(3)
                    .padding(.bottom, 8)
            }
        }
        .padding(16)
        .frame(height: 150)
        .customBorder()
        
    }
}


