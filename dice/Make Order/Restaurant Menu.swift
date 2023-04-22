//
//  Restaurant Menu.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct Restaurant_Menu: View {
    
    @Binding var sheet: Bool
    
    var body: some View {
        VStack{
            Food_Item()
            Food_Item()
            Food_Item()
        }
    }
}

struct Restaurant_Menu_Previews: PreviewProvider {
    static var previews: some View {
        Restaurant_Menu(sheet: .constant(true))
    }
}
