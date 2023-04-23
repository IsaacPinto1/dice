//
//  B Cafe.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct B_Cafe: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: The_Cuban()) {
                    Food_Item(image: "cuban", name: "The Cuban", userEmail: $userEmail)
                        .environmentObject(dataManager)
                }
            }
        }
    }
}

struct B_Cafe_Previews: PreviewProvider {
    static var previews: some View {
        B_Cafe()
    }
}
