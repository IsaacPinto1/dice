//
//  Food Item.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct Food_Item: View {
    var body: some View {
        HStack{
            Image("dice-1")
            VStack(alignment: .leading){
                Text("Item Name:")
                    .padding(.vertical, 9.0)
                Text("$Price:")
            }
            .frame(height: 74.0, alignment: .topLeading)
        }.frame( maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}

struct Food_Item_Previews: PreviewProvider {
    static var previews: some View {
        Food_Item()
    }
}
