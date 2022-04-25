//
//  dataProtocol.swift
//  Assignment2
//
//  Created by Swapnil Tilkari on 24/04/22.
//

import Foundation

enum DataType : String {
    
    case grid =  "grid"
    case list = "list"
    case banner = "banner"
    case none = "none"
}

protocol DataProtocol  {
    
    var id : String  { get set }
    var image : String { get set }
}

struct DataModel {
    
    var dataType : DataType = .none
    var data : [DataProtocol] = []
    
    init() {}
    
    init(response : [String : Any]) {
        
        if let data_type = response["data_type"] as? String {
            
            switch data_type {
                
            case DataType.grid.rawValue :
                
                self.dataType = .grid
                
            case DataType.list.rawValue :
                
                self.dataType = .list
                
            case DataType.banner.rawValue :
                
                self.dataType = .banner
                
            default:
                
                self.dataType = .none
            }
            
        }
        
        if let data = response["data"] as? [[String:Any]] {
            switch dataType {
                
            case .list :
                
                for item in data  {
                    
                    let itemVal = ListModel(response: item)
                    self.data.append(itemVal)
                }
                
            case .banner :
                
                for item in data  {
                    
                    let itemVal = BannerModel(response: item)
                    self.data.append(itemVal)
                }
                
            case .grid :
                
                for item in data  {
                    
                    let itemVal = GridModel(response: item)
                    self.data.append(itemVal)
                }
                
            case .none :
                
                print("no list")
            }
            
        }
    }
}
