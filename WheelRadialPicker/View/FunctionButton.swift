//
//  FunctionButton.swift
//  WheelRadialPicker
//
//  Created by RJ Hrabowskie on 9/29/20.
//

import SwiftUI

struct FunctionButton: View {
    var image: String
    var angle: Double
    @State var circleWidth = UIScreen.main.bounds.width / 1.5
    @Binding var current: Int
    var index: Int
    
    var body: some View {
        Image(systemName: image)
            .font(.system(size: 24, weight: .heavy))
            .foregroundColor(.black)
            .rotationEffect(.init(degrees: -angle))
            .padding()
            .background(Color.red.opacity(current == index ? 0.5 : 0))
            .clipShape(Circle())
            .offset(x: -circleWidth / 2)
            // This will rotate image
            // so we undo its image rotaion
            .rotationEffect(.init(degrees: angle))
    }
}
