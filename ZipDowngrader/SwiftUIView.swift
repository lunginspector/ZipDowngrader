//
//  SwiftUIView.swift
//  ZipDowngrader
//
//  Created by Main on 3/20/25.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack {
            Image("hacker")
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            VStack {
                Text("hello work")
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
