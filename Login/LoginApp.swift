//
//  LoginApp.swift
//  Login
//
//  Created by Cesar Silva on 31/10/23.
//

import SwiftUI

@main
struct LoginApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
