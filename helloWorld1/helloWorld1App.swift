//
//  helloWorld1App.swift
//  helloWorld1
//
//  Created by Ananya Tandel on 9/1/23.
//

import SwiftUI

@main
struct helloWorld1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
