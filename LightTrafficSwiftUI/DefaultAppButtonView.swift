//
//  DefaultAppButtonView.swift
//  LightTrafficSwiftUI
//
//  Created by Nadzeya Shpakouskaya on 26/10/2021.
//

import SwiftUI

struct DefaultAppButtonView: View {
    let text: String
    
    var body: some View {
        ZStack{
            Capsule()
                .fill(.blue)
                .frame(width: 200, height: 50)
                .overlay(
                    Capsule().stroke(.white, lineWidth: 5)
                )
            Text(text)
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(.white)
            
        }
    }
}

struct DefaultAppButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultAppButtonView(text: "Button")
    }
}
