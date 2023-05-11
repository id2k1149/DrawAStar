//
//  ContentView.swift
//  DrawAStar
//
//  Created by Max Franz Immelmann on 5/10/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            StartView(isSimple: false)
                .tabItem {
                    Image(systemName: "burst")
                    Text("Complex")
                }
            StartView(isSimple: true)
                .tabItem {
                    Image(systemName: "square")
                        .rotationEffect(.degrees(Double(40)))
                    Text("Simple")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
