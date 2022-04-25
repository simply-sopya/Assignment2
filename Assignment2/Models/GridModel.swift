
//
//  GridModel.swift
//  Assignment2
//
//  Created by Swapnil Tilkari on 24/04/22.
//

import Foundation 


struct GridModel : DataProtocol {
    
    var id : String = ""
    var image : String = ""
    var title : String = ""
    var isVeg : Bool = false
    
    init() {}
    
    init(response : [String : Any]) {
        
        if let id = response["id"] as? String {
            
            self.id = id
        }
        
        if let image = response["image"] as? String {
            
            self.image = image
        }
        
        if let title = response["title"] as? String {
            
            self.title = title
        }
        
        if let isVeg = response["isVeg"] as? Bool {
            
            self.isVeg = isVeg
        }
    }
}
