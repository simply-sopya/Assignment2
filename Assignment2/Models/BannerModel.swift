
//
//  BannerModel.swift
//  Assignment2
//
//  Created by Swapnil Tilkari on 24/04/22.
//


import Foundation 


struct BannerModel : DataProtocol {
    
    var id : String = ""
    var image : String = ""
    
    init() {}
    
    init(response : [String : Any]) {
        
        if let id = response["id"] as? String {
            
            self.id = id 
        } 
        
        if let image = response["image"] as? String {
            
            self.image = image
        } 
        
    }
}
