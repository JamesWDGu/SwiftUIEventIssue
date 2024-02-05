//
//  HelloUIView.swift
//  SwiftUIEvent
//
//  Created by Weidong Gu on 2/1/24.
//

import SwiftUI

struct HelloUIView: View {
    var body: some View {
      Button("test from SwiftUI") {
        print("test from SwiftUI")
      }
      .foregroundColor(.brown)
      .frame(width: 300, height: 300)
    }
}

#Preview {
    HelloUIView()
}
