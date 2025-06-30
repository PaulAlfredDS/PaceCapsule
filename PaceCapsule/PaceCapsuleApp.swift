//
//  PaceCapsuleApp.swift
//  PaceCapsule
//
//  Created by Paul on 6/30/25.
//

import SwiftUI

@main
struct PaceCapsuleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
