//
//  ButtonView.swift
//  DataFlowSwiftUI
//
//  Created by Max Franz Immelmann on 4/21/23.
//

import SwiftUI

struct ButtonView: View {
    let rays: Int
    let action: () -> Void
    
    @State private var isPulsating = false
    
    var body: some View {
        VStack {
            Button(action: action) {
                
                HStack {
                    Text("How to draw a ")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .scaleEffect(isPulsating ? 1.05 : 1.0)
                        .animation(.default, value: isPulsating)

                    StarView(rays: rays)
                        .frame(width: 40, height: 40)
                        .foregroundColor(.orange)
                }
            }
            .frame(width: 300, height: 60)
            .background(.blue)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.black, lineWidth: 4)
            )
            .scaleEffect(isPulsating ? 1.05 : 1.0)
            .animation(.easeInOut(duration: 1).repeatForever(),
                       value: isPulsating)
            .onAppear {
                isPulsating = true
            }
            .onDisappear {
                isPulsating = false
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(rays: 5,
                   action: {}
        )
    }
}
