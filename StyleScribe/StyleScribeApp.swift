//
//  StyleScribeApp.swift
//  StyleScribe
//
//  Created by shenetworks on 5/21/24.
//

import SwiftUI

@main
struct StyleScribeApp: App {
    @StateObject private var userSelection = UserSelection()
    
    var body: some Scene {
        WindowGroup {
            SelectionView()
                .environmentObject(userSelection)
                .modelContainer(for: BrandList.self)
        }
    }
}
