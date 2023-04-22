//
//  Rendez.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct Rendez: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: Bowl()) {
                    Food_Item(image: "bowl", name: "Custom Bowl")
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
