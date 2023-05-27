//
//  MemeCreatorApp.swift
//  MemeCreator
//
//  Created by dsm 5e on 27.05.2023.
//

import SwiftUI

@main
struct MemeCreatorApp: App {
    
    @StateObject var fetcher = PandaCollectionFetcher()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MemeCreator()
                    .environmentObject(fetcher)
            }
        }
    }
}
