//
//  Helper.swift
//  Assignment2
//
//  Created by Swapnil Tilkari on 24/04/22.
//

import Foundation
import SwiftUI

class helper {
    
    // Fetch Dictionary from Json files
    public static func fetchDataFromLocalJson(name : String)-> NSDictionary? {
        
        if let path = Bundle.main.path(forResource: name, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                return (jsonResult as! NSDictionary)
            } catch {
                // handle error
            }
        }
        return nil
    }
}


extension View {
    
    func customShadow(frontColor:Color,BackColor: Color) -> some View {
        self.shadow(color: frontColor, radius: 6, x: 2, y: 2)
            .shadow(color: BackColor, radius: 6, x: -2, y: -2)
    }
    
    func customRoundedRectangle(cornerRadius: CGFloat = 12.0) -> some View {
        self.clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
    }
    
    func customBorder( color: Color = .gray, cornerRadius : CGFloat = 0, opacity: Double = 1) -> some View {
        self.overlay(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous).stroke(color.opacity(opacity), lineWidth: 2))
    }
    
    func customCircleBorder(color: Color = .gray, lineWidth : CGFloat = 2) -> some View {
        self.overlay(Circle().stroke(color, lineWidth: lineWidth))
    }
    
    func customCapsuleBorder(color: Color = .gray, lineWidth : CGFloat = 2) -> some View {
        self.overlay(Capsule().stroke(color, lineWidth: lineWidth))
    }
    
    func customRoundedRectangleOverlay(cornerRadius:CGFloat, color: Color = .white, lineWidth : CGFloat = 2) -> some View {
        self.overlay(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous).strokeBorder(color, lineWidth: lineWidth))
    }
    
    
}
