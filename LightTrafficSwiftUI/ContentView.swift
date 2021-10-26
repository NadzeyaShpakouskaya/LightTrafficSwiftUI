//
//  ContentView.swift
//  LightTrafficSwiftUI
//
//  Created by Nadzeya Shpakouskaya on 26/10/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Private parameters
    @State private var buttonTitle = "Start"
    
    @State private var redOpacity = 0.35
    @State private var yellowOpacity = 0.35
    @State private var greenOpacity = 0.35
    
    @State private var nextColor = Light?.none
    
    // MARK: - Body
    var body: some View {
        ZStack{
            Color(.darkGray)
                .ignoresSafeArea()
            VStack{
                lightSignsView
                Spacer()
                Button {
                    switchColors()
                } label: {
                    DefaultAppButtonView(text: buttonTitle)
                }
            }.padding()
        }
    }
    
    private var lightSignsView: some View {
        VStack(spacing: 16) {
            CircleView(color: .red).opacity(redOpacity)
            CircleView(color: .yellow).opacity(yellowOpacity)
            CircleView(color: .green).opacity(greenOpacity)
        }
    }
    
    // MARK: - Private methods
    private func switchColors(){
        switch nextColor {
        case .none:
            buttonTitle = "Next"
            redOpacity = 1.00
            greenOpacity = 0.35
            nextColor = .yellow
        case .red:
            redOpacity = 1.00
            greenOpacity = 0.35
            nextColor = .yellow
        case .yellow:
            nextColor = .green
            yellowOpacity = 1.00
            redOpacity = 0.35
        case .green:
            nextColor = .red
            greenOpacity = 1.00
            yellowOpacity = 0.35
        }
    }
}

fileprivate enum Light {
    case red, yellow, green
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
