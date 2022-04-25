//
//  ListView.swift
//  Assignment2
//
//  Created by Swapnil Tilkari on 24/04/22.
//

import SwiftUI

struct ListView: View {
    
    @Binding var data : DataModel
    
    var body: some View {
        
        if data.data.count > 0 {
            
            ForEach(0..<data.data.count,id:\.self) { i in
                
                if let dataVal = data.data[i] as? ListModel {
                    
                    ListViewCell(ListObj: .constant(dataVal))
                    
                }
                
            }
        }else{
            
            EmptyView()
        }
    }
}

