//
//  The Study.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct The_Study: View {
    @EnvironmentObject var dataManager: DataManager
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: Sandwich()) {
                    Food_Item(image: "studysand", name: "Custom Sandwich", userEmail: $userEmail)
                        .environmentObject(dataManager)
                }
            }
        }
    }
}

struct The_Study_Previews: PreviewProvider {
    static var previews: some View {
        The_Study()
    }
}
