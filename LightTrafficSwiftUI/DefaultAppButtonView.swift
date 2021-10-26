//
//  DefaultAppButtonView.swift
//  LightTrafficSwiftUI
//
//  Created by Nadzeya Shpakouskaya on 26/10/2021.
//

import SwiftUI

struct DefaultAppButtonView: View {
    let text: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action){
            ZStack{
                Capsule()
                    .fill(.indigo)
                    .frame(width: 200, height: 50)
                    .shadow(color: .white, radius: 5)
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
}

struct DefaultAppButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultAppButtonView(text: "Button", action: {})
    }
}
