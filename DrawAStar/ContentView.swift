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
            StarOptionOneView()
                .tabItem {
                    Image(systemName: "burst")
                    Text("Option One")
                }
            StarOptionTwoView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Option Two")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
