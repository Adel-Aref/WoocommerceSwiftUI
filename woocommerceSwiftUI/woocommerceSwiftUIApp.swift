//
//  woocommerceSwiftUIApp.swift
//  woocommerceSwiftUI
//
//  Created by Adel Aref on 27/02/2024.
//

import SwiftUI

@main
struct woocommerceSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
