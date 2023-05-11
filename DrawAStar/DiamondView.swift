//
//  DiamondView.swift
//  DrawAStar
//
//  Created by Max Franz Immelmann on 5/10/23.
//

import SwiftUI

struct DiamondView: View {
    let rays: Int
    let isSimple: Bool
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            let coordinates = isSimple
            ? getSimpleCoordinates(width: width, height: height)
            : getComplexCoordinates(width: width, height: height)
            
            ZStack {
                Path { path in
                    path.move(to: coordinates[0])
                    path.addLine(to: coordinates[1])
                    path.addLine(to: coordinates[2])
                    path.addLine(to: coordinates[3])
                    path.closeSubpath()
                }
                .stroke()
            }
        }
    }
    
    private func getComplexCoordinates(width: CGFloat, height: CGFloat) -> [CGPoint] {
        
        let size = min(width, height)
        let middle = size / 2
        let angle = 180 / rays
        let radius = size * 0.2
        
        let hOffset = radius * sin(Double(angle) * Double.pi / 180)
        let vOffset = radius * cos(Double(angle) * Double.pi / 180)
        
        let leftPointX = middle - hOffset
        let centerY = middle - vOffset
        let rightPointX = middle + hOffset
        
        return [
            CGPoint(x: leftPointX, y: centerY),
            CGPoint(x: middle, y: 0),
            CGPoint(x: rightPointX, y: centerY),
            CGPoint(x: middle, y: middle)
        ]
    }
    
    private func getSimpleCoordinates(width: CGFloat, height: CGFloat) -> [CGPoint] {
        
        let size = min(width, height)
        let middle = size / 2
        let angle = 180 / rays
        let radius = size * 0.2
        
        let hOffset = radius * sin(Double(angle) * Double.pi / 180)
        let vOffset = radius * cos(Double(angle) * Double.pi / 180)
        
        let leftPointX = middle - hOffset
        let centerY = middle - vOffset
        let rightPointX = middle + hOffset
        
        return [
            CGPoint(x: leftPointX, y: centerY),
            CGPoint(x: middle, y: 0),
            CGPoint(x: rightPointX, y: centerY),
            CGPoint(x: middle, y: middle)
        ]
    }
}


struct DiamondView_Previews: PreviewProvider {
    static var previews: some View {
        DiamondView(rays: 5, isSimple: false)
            .frame(width: 300, height: 300)
    }
}
