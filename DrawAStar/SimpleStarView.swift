//
//  SimpleStarViewView.swift
//  DrawAStar
//
//  Created by Max Franz Immelmann on 5/10/23.
//

import SwiftUI

struct SimpleStarView: View {
    
    var body: some View {
        VStack {
            ButtonView(rays: 8,
                       action: {})
            Text("Simple")
                .padding(.top, 40)
            Spacer()
            StarView(rays: 8)
                .frame(width: 300, height: 300)
            Spacer()
        }
        .padding()
    }
}

struct SimpleStarViewView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleStarView()
    }
}
