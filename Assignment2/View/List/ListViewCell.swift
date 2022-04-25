//
//  ListViewCell.swift
//  Assignment2
//
//  Created by Swapnil Tilkari on 24/04/22.
//

import SwiftUI

struct ListViewCell: View {
    
    @Binding var ListObj : ListModel
    
    var body: some View {
        
        VStack(alignment:.leading,spacing: 0) {
            
            VStack(alignment:.leading,spacing: 0) {
                
            HStack(alignment:.top,spacing: 20) {
                
                VStack(alignment:.leading) {
                    
                    CustomImageView(url: ListObj.image)
                    
                }
                .frame(width:100,height: 100)
                
                
                VStack(alignment:.leading,spacing: 5) {
                    //HStack {
                    Text(ListObj.title)
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(3)
                        .font(.system(size: 16, weight: .bold))
                     
                    
                    if ListObj.isVeg {
                        
                         VegCell()
                     }
                    HStack {
                        Spacer()
                        VStack(alignment:.trailing,spacing: 5) {
                            
                            Text("MRP \(ListObj.mrp)")
                                .strikethrough()
                                .foregroundColor(.gray)
                                .font(.system(size: 11))
                            
                            Text("DMart \(ListObj.dPrice)")
                                .foregroundColor(.green)
                                .font(.system(size: 13, weight: .bold))
                            
                            Text("Save \(ListObj.saving)")
                                .foregroundColor(.red)
                                .font(.system(size: 13, weight: .bold))
                        }
                    }
                    .padding(.bottom, 8)
                        
                       
                   
                }
                
            }
           
            //VStack(alignment:.leading) {
            HStack(spacing: 20) {
                
                Text("ADD TO LIST")
                    .foregroundColor(.green)
                    .font(.system(size: 12, weight: .bold))
                    .frame(width: 100)
               
                HStack(spacing: 20) {
             
                HStack(spacing:0) {
                    
                    Spacer()
                    
                    VStack(alignment:.center) {
                        
                        Text(ListObj.quantityAvailable[0])
                            .font(.system(size: 12, weight: .bold))
                        
                    }
                    .padding(8)
                    .frame(height: 40)
                    .foregroundColor(.black)
                    
                    Spacer()
                    
                    if ListObj.measuringType == .liter {
                        
                        
                        Button {
                            
                        } label: {
                            
                            VStack {
                                
                                Image(systemName: "chevron.down")
                                    .foregroundColor(.white)
                                    .background(Color.green)
                                    .padding(8)
                                
                            }
                            .frame(width:40,height: 40)
                            .background(Color.green)
                            
                        }
                       
                    }
                   //
                }
                .frame(maxWidth:.infinity)
                .customBorder(color: .green, cornerRadius: 4, opacity: 1)
                
                Button {
                    
                } label: {
                    
                    VStack {
                        
                        Text("ADD TO CART")
                            .font(.system(size: 12, weight: .bold))
                    }
                    .padding(8)
                    .frame(height: 40)
                    .frame(maxWidth:.infinity)
                    .background(Color.green)
                    
                    .foregroundColor(.white)
                    .customBorder(color: .green, cornerRadius: 4, opacity: 1)
                    
                }
                
                .frame(maxWidth:.infinity)
                   // Spacer()
              
                }
                .frame(maxWidth:.infinity)
               
                
            }
               // }
           
        }
        .padding(16)
            
            Divider()
        }
           .frame(width: UIScreen.main.bounds.width)
     
    }
}

