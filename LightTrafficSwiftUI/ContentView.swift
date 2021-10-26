//
//  ContentView.swift
//  LightTrafficSwiftUI
//
//  Created by Nadzeya Shpakouskaya on 26/10/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonTitle = "Start"
    
    var body: some View {
        ZStack{
            Color(.black).ignoresSafeArea()
            VStack{
                VStack(spacing: 16) {
                    CircleView(color: .red)
                    CircleView(color: .yellow)
                    CircleView(color: .green)
                }
                Spacer()
                Button {
                    
                } label: {
                    DefaultAppButtonView(text: buttonTitle)
                }
                
            }.padding()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
