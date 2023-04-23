//
//  diceApp.swift
//  dice
//
//  Created by Isaac Pinto on 4/21/23.
//

import SwiftUI
import Firebase

@main
struct diceApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
