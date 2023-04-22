//
//  Restaurant Icon.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct Restaurant_Icon: View {
    
    @State var shouldPresentSheet = false
    var image: String
    var name: String
    
    var body: some View {
        VStack{
            Button{
                shouldPresentSheet.toggle()
            } label:{
                Image(image)
                    .resizable()
                    .frame(width: 150, height: 100)
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 4))
            }.sheet(isPresented: $shouldPresentSheet) {
            } content: {
                switch name {
                case "Bruin Cafe":
                    B_Cafe()
                case "The Study":
                    The_Study()
                case "Rendezvous West":
                    Rendez()
                default:
                    B_Cafe()
                }
            }
            Text(name)
            
        }
        
    }
}

struct Restaurant_Icon_Previews: PreviewProvider {
    static var previews: some View {
        Restaurant_Icon(image: "the-study", name: "The Study")
    }
}
