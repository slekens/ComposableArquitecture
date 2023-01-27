//
//  ComposableArquitectureApp.swift
//  ComposableArquitecture
//
//  Created by Abraham Abreu on 09/11/22.
//

import SwiftUI
import ComposableArchitecture

@main
struct ComposableArquitectureApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(store: Store(initialState: Counter.State(),
                                     reducer: Counter()))
        }
    }
}
