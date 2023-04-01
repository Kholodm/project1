//
//  SecondView.swift
//  list
//
//  Created by kholod on 07/09/1444 AH.
//  Copyright © 1444 -. All rights reserved.
//

import SwiftUI

struct SecondView: View {
	var body: some View {
		Text("Hello, World!")
			.padding(.horizontal, 20.0)
			.navigationTitle("Navigation Title")
			.toolbar {
				ToolbarItem(placement: .navigationBarLeading) {
					EditButton()
				}
			}
	}
}

struct SecondView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationStack {
			SecondView()
		}
	}
}