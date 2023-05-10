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
            ButtonView(title: "Tap Me",
                       rays: 7,
                       action: {})
            Spacer()
            StarView(rays: 7)
                .foregroundColor(.green)
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
