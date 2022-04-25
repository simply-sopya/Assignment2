//
//  GridView.swift
//  Assignment2
//
//  Created by Swapnil Tilkari on 24/04/22.
//

import SwiftUI

struct GridView: View {
    @Binding var data : DataModel
     var  gridItemLayout = [GridItem(.flexible(), spacing: 0), GridItem(.flexible(), spacing: 0), GridItem(.flexible(), spacing: 0), GridItem(.flexible(), spacing: 0)]
    
    var body: some View {
        if data.data.count > 0 {
            
        LazyVGrid(columns: gridItemLayout,spacing: 0) {
            // Display the item
           
            ForEach(0..<data.data.count, id: \.self) { i in
               // Text("")
                
                if let dataVal = data.data[i] as? GridModel {
                    
                    GridViewCell(gridObj: .constant(dataVal))
                    
                }
            }
           
        }
            
        }else{
            EmptyView()
        }
    }
}


