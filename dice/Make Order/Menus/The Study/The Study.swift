//
//  The Study.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct The_Study: View {
    @EnvironmentObject var dataManager: DataManager
    @Binding var userEmail: String
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: Sandwich(userEmail: $userEmail).environmentObject(dataManager)) {
                    Food_Item(image: "studysand", name: "Custom Sandwich")
                }
            }
        }
    }
}

struct The_Study_Previews: PreviewProvider {
    static var previews: some View {
        The_Study(userEmail: .constant("test"))
    }
}
