//
//  Rendez.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct Rendez: View {
    
    @Binding var userEmail: String
    
    @EnvironmentObject var dataManager: DataManager
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: Bowl()) {
                    Food_Item(image: "bowl", name: "Custom Bowl", userEmail: $userEmail)
                        .environmentObject(dataManager)
                }
            }
        }
    }
}

struct Rendez_Previews: PreviewProvider {
    static var previews: some View {
        Rendez()
    }
}
