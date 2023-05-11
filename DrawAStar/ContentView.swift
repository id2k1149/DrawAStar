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
            ComplexStarView()
                .tabItem {
                    Image(systemName: "burst")
                    Text("Complex")
                }
            SimpleStarView()
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
