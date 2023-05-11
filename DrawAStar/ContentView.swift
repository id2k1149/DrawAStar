//
//  ContentView.swift
//  DrawAStar
//
//  Created by Max Franz Immelmann on 5/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ButtonView(rays: 5,
                       action: {})
            Spacer()
            StarView(rays: 5)
                .frame(width: 300, height: 300)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
