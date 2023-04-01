//
//  SwiftUIView.swift
//  Little Lemonnn
//
//  Created by Kholod Almuneef on 07/09/1444 AH.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
func output() {
 defer { print(1) }
 print("2")
 defer { print(3) }
 print(4)
}
