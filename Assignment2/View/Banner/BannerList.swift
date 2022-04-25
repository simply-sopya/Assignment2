//
//  BannerList.swift
//  Assignment2
//
//  Created by Swapnil Tilkari on 24/04/22.
//

import SwiftUI

struct BannerList: View {
    
    @Binding var data : DataModel
    
    var body: some View {
        
        ForEach(0..<data.data.count,id: \.self)  { i in
            
            if let dataVal = data.data[i] as? BannerModel {
                
                CustomImageView(url: dataVal.image )
                
            }
        }
    }
}


