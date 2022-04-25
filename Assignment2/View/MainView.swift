//
//  DashboardView.swift
//  Assignment2
//
//  Created by Swapnil Tilkari on 24/04/22.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var data = MainViewModel.shared
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            ScrollView(showsIndicators: false) {
                
                VStack(alignment: .leading, spacing: 30) {
                    
                    if  data.dataObjs.count > 0 {
                        
                    ForEach(0..<data.dataObjs.count,id: \.self)  { i in
                        
                        if data.dataObjs[i].dataType == .banner {
                            
                            BannerList(data: $data.dataObjs[i])
                            
                        }else if  data.dataObjs[i].dataType == .list {
                            
                            ListView(data: $data.dataObjs[i])
                            
                        }else if  data.dataObjs[i].dataType == .grid {
                            
                            GridView(data: $data.dataObjs[i])
                        }else{
                            EmptyView()
                        }
                        
                    }
                        
                    }else{
                        EmptyView()
                    }
                }
            }
        }
        .onAppear {
            
            data.getData()
        }
    }
}

