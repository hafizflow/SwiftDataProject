//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Hafizur Rahman on 28/12/25.
//

import SwiftData
import SwiftUI

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
