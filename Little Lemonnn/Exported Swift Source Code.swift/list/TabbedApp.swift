//
//  TabbedApp.swift
//  list
//
//  Created by kholod on 07/09/1444 AH.
//  Copyright © 1444 -. All rights reserved.
//

import SwiftUI

@main
struct TabbedApp: App {
	var body: some Scene {
		WindowGroup {
			TabView {
				FirstView()
					.tabItem { Label("First", systemImage: "sun.max") }
				NavigationStack {
					SecondView()
				}
				.tabItem { Label("Second", systemImage: "moon") }
			}
		}
	}
}