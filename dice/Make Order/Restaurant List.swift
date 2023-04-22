//
//  Restaurant List.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct Restaurant_List: View {
    var body: some View {
        VStack{
            HStack{
                Restaurant_Icon()
                Restaurant_Icon()
            }
                .padding(.bottom, 100.0)
            HStack{
                Restaurant_Icon()
                Restaurant_Icon()
            }
        }
    }
}

struct Restaurant_List_Previews: PreviewProvider {
    static var previews: some View {
        Restaurant_List()
    }
}
