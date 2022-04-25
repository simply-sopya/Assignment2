//
//  VegCell.swift
//  Assignment2
//
//  Created by Swapnil Tilkari on 24/04/22.
//

import SwiftUI

struct VegCell: View {
    
    var body: some View {
        
        VStack {
            
            Circle()
                .fill(Color.green)
                .frame(width: 5, height: 5)
            
        }
        .frame(width: 10, height: 10)
        .customBorder(color: .green, cornerRadius: 0, opacity:1)
        
    }
}

struct VegCell_Previews: PreviewProvider {
    static var previews: some View {
        VegCell()
    }
}
