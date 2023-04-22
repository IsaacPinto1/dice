//
//  Food Item.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct Food_Item: View {
    
    let image: String
    let name: String
    
    var body: some View {
        HStack{
            Image(image)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 2))
            VStack(alignment: .leading){
                Text(name)
            }
        }.frame( maxWidth: .infinity, alignment: .leading)
            .padding()
    }
}

struct Food_Item_Previews: PreviewProvider {
    static var previews: some View {
        Food_Item(image: "cuban", name: "The Cuban" )
    }
}
