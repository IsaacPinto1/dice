//
//  B Cafe.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct B_Cafe: View {
    
    @EnvironmentObject var dataManager: DataManager
    @Binding var userEmail: String
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: The_Cuban(userEmail: $userEmail).environmentObject(dataManager)) {
                    Food_Item(image: "cuban", name: "The Cuban")
                }
            }
        }
    }
}

struct B_Cafe_Previews: PreviewProvider {
    static var previews: some View {
        B_Cafe(userEmail: .constant("test"))
    }
}
