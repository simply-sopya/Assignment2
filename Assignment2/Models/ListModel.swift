//
//  ListModel.swift
//  Assignment2
//
//  Created by Swapnil Tilkari on 24/04/22.
//

import Foundation 

enum MeasuringType : String {
    case liter = "liter"
    case gram = "gram"
}

struct ListModel: DataProtocol  {
    
    var id : String = ""
    var image : String = ""
    var title : String = ""
    var measuringType : MeasuringType = .gram
    var quantityAvailable : [String] = []
    var mrp : String = ""
    var dPrice : String = ""
    var saving : String = ""
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
        
        if let measuring_type = response["measuring_type"] as? String {
            
            switch measuring_type {
                
            case MeasuringType.liter.rawValue :
                
                self.measuringType = .liter
                
            case MeasuringType.gram.rawValue :
                
                self.measuringType = .gram
                
            default :
                
                self.measuringType = .gram
                
            }
            
        }
        
        if let quantity_available = response["quantity_available"] as? [String] {
            
            for item in quantity_available {
                
                self.quantityAvailable.append(item)
            }
        }
        
        if let mrp = response["mrp"] as? String {
            
            self.mrp = mrp
            
        }
        
        if let d_price = response["d_price"] as? String {
            
            self.dPrice = d_price
            
        }
        
        if let saving = response["saving"] as? String {
            
            self.saving = saving
            
        }
        
        if let isVeg = response["isVeg"] as? Bool {
            
            self.isVeg = isVeg
            
        }
        
    }
}
