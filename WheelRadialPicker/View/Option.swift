//
//  Option.swift
//  WheelRadialPicker
//
//  Created by RJ Hrabowskie on 9/29/20.
//

import SwiftUI

struct Option: View {
    var image: String
    
    var body: some View {
        Button(action: {}) {
            Image(systemName: image)
                .font(.title2)
                .foregroundColor(.white)
        }
    }
}
