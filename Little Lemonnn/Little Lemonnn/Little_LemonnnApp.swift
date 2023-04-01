//
//  Little_LemonnnApp.swift
//  Little Lemonnn
//
//  Created by Kholod Almuneef on 07/09/1444 AH.
//

import SwiftUI

@main
struct Little_LemonnnApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
