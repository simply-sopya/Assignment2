//
//  ListEmptyView.swift
//  Assignment2
//
//  Created by Swapnil Tilkari on 24/04/22.
//

import SwiftUI

struct EmptyView: View {
    
    var body: some View {
        
        VStack(alignment:.center) {
            
            Image(systemName: "photo")
                .resizable()
                .frame(width:150,height: 150)
            
            
          Text("No Data found!!!!!!!!")
                .font(.system(size: 24, weight: .bold))
        }
        .frame(width: UIScreen.main.bounds.width)
    }
}

