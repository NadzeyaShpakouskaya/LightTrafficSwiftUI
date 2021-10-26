//
//  CircleView.swift
//  LightTrafficSwiftUI
//
//  Created by Nadzeya Shpakouskaya on 26/10/2021.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: 125, height: 125)
            .overlay(
                Circle()
                    .stroke(.white, lineWidth: 5)
                   
            )

    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red)
    }
}
