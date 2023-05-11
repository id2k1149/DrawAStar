//
//  StarOptionOneView.swift
//  DrawAStar
//
//  Created by Max Franz Immelmann on 5/10/23.
//

import SwiftUI

struct StarOptionOneView: View {

    var body: some View {
        VStack {
            ButtonView(rays: 8,
                       action: {})
            Spacer()
            StarView(rays: 8)
                .frame(width: 300, height: 300)
            Spacer()
        }
        .padding()
    }
     
}

struct StarOptionOneView_Previews: PreviewProvider {
    static var previews: some View {
        StarOptionOneView()
    }
}
