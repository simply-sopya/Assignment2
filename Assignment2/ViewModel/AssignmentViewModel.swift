//
//  AssignmentViewModel.swift
//  Assignment2
//
//  Created by Swapnil Tilkari on 24/04/22.
//

import Foundation

class MainViewModel : ObservableObject  {
    
    private init() {
        
    }
    
    static var shared = MainViewModel()
    
    @Published var dataObjs : [DataModel] = []
    
    func getData() {
        
        if  let dataJson = helper.fetchDataFromLocalJson(name: "Data") as? [String: Any] {
            
            if let dataArr = dataJson["dataJson"] as? [[String: Any]] {
                
                for item in dataArr {
                    
                    let itemVal = DataModel(response: item)
                    self.dataObjs.append(itemVal)
                }
            }
            print(dataObjs)
        }
    }
}



