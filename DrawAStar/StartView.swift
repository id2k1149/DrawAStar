//
//  ComplexStarView.swift
//  DrawAStar
//
//  Created by Max Franz Immelmann on 5/10/23.
//

import SwiftUI

struct StartView: View {
    let isSimple: Bool

    var body: some View {
        VStack {
            ButtonView(rays: 8,
                       action: {})
            Text(isSimple ? "SIMPLE" : "COMPLEX")
                .padding(.top, 40)
            Spacer()
            StarView(rays: 8, isSimple: isSimple)
                .frame(width: 300, height: 300)
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
