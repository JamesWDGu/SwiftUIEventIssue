//
//  HelloUIView.swift
//  SwiftUIEvent
//
//  Created by Weidong Gu on 2/1/24.
//

import SwiftUI

struct HelloUIView: View {
    var body: some View {
      Button("SwiftUI button (underneath layer)") {
        print("SwiftUI button is clicked") // Bug: Don't want this action is trigged when click covered UIKit button
      }
      .foregroundColor(.brown)
      .frame(width: 300, height: 300)
    }
}

#Preview {
    HelloUIView()
}
