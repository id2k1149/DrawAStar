//
//  ComplexStarView.swift
//  DrawAStar
//
//  Created by Max Franz Immelmann on 5/10/23.
//

import SwiftUI

struct ComplexStarView: View {

    var body: some View {
        VStack {
            ButtonView(rays: 8,
                       action: {})
            Text("COMPLEX")
                .padding(.top, 40)
            Spacer()
            StarView(rays: 8, isSimple: false)
                .frame(width: 300, height: 300)
            Spacer()
        }
        .padding()
    }
     
}

struct ComplexStarView_Previews: PreviewProvider {
    static var previews: some View {
        ComplexStarView()
    }
}
