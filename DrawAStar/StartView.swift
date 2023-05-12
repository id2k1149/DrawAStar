//
//  ComplexStarView.swift
//  DrawAStar
//
//  Created by Max Franz Immelmann on 5/10/23.
//

import SwiftUI

struct StartView: View {
    let isSimple: Bool
    
    @State private var progress: Double = 0.0

    var body: some View {
        VStack {
            ButtonView(rays: 8,
                       action: {withAnimation {
                progress += 1
            }})
            Text(isSimple ? "SIMPLE" : "COMPLEX")
                .padding(.top, 40)
            Spacer()
            ZStack {
                StarView(rays: 6, isSimple: isSimple)
                    .frame(width: 300, height: 300)
//                Circle()
//                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
//                    .frame(width: 300, height: 300)
                
                Circle()
                    .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                    .stroke(Color.blue, lineWidth: 2)
                    .frame(width: 300, height: 300)
                    .rotationEffect(Angle(degrees: -90))
                    .animation(.linear(duration: 2),
                               value: progress)
            }
            Spacer()
        }
        .padding()
    }
     
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(isSimple: false)
    }
}
