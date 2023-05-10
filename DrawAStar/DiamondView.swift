//
//  DiamondView.swift
//  DrawAStar
//
//  Created by Max Franz Immelmann on 5/10/23.
//

import SwiftUI

struct DiamondView: View {
    let rays: Int
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
                      
            let angle = 180 / rays
            
            let radius = size * 0.190983
            let hOffset = radius * sin(Double(angle) * Double.pi / 180)
            let vOffset = radius * cos(Double(angle) * Double.pi / 180)
            
            let leftPointX = middle - hOffset
            let centerY = middle - vOffset
            let rightPointX = middle + hOffset
            
            ZStack {
//                Path { path in
//                    path.move(to: CGPoint(x: leftPointX, y: centerY))
//                    path.addLine(to: CGPoint(x: middle, y: 0))
//                    path.addLine(to: CGPoint(x: rightPointX, y: centerY))
//                    path.addLine(to: CGPoint(x: middle, y: middle))
//                    path.closeSubpath()
//                }
//                .fill(
//                    LinearGradient(
//                        colors: [.orange, .red],
//                        startPoint: .top,
//                        endPoint: .center
//                    )
//                )
                
                Path { path in
                    path.move(to: CGPoint(x: leftPointX, y: centerY))
                    path.addLine(to: CGPoint(x: middle, y: 0))
                    path.addLine(to: CGPoint(x: rightPointX, y: centerY))
                }
                .stroke(Color.black, lineWidth: 1)
            }
        }
    }
}

struct DiamondView_Previews: PreviewProvider {
    static var previews: some View {
        DiamondView(rays: 8)
            .frame(width: 300, height: 300)
    }
}
