//
//  StarView.swift
//  DrawAStar
//
//  Created by Max Franz Immelmann on 5/10/23.
//

import SwiftUI

struct StarView: View {
    let rays: Int
    
    var body: some View {
        let angle = 360 / Double(rays)
        ZStack {
            ForEach(0..<rays, id: \.self) { iteration in
                DiamondView(rays: rays)
                    .rotationEffect(.degrees(Double(iteration) * angle))
            }
        }
    }
}

struct StarView_Previews: PreviewProvider {
    static var previews: some View {
        StarView(rays: 8)
            .frame(width: 300, height: 300)
    }
}
