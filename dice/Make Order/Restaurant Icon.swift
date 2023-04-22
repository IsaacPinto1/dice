//
//  Restaurant Icon.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct Restaurant_Icon: View {
    
    @State var shouldPresentSheet = false
    
    var body: some View {
        VStack{
            Button{
                shouldPresentSheet.toggle()
            } label:{
                Image("dice-1")
            }.sheet(isPresented: $shouldPresentSheet) {
                print("Sheet dismissed!")
            } content: {
                Restaurant_Menu(sheet: $shouldPresentSheet)
            }
            Text("Restaurant Name")
            
        }
        
    }
}

struct Restaurant_Icon_Previews: PreviewProvider {
    static var previews: some View {
        Restaurant_Icon()
    }
}
