//
//  Sandwich.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct Sandwich: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var dataManager: DataManager
    
    @State private var meat = "Ham"
    let meats = ["Steak", "Ham", "Bacon"]
    
    @State private var veg1 = "Tomatoes"
    @State private var veg2 = "None"
    let veggies = ["Tomatoes", "Red Onion", "Lecttuce", "Olives", "None"]

    var body: some View {
        VStack{
            HStack{
                Text("Choose meat type: ")
                Picker("Select a meat type", selection: $meat) {
                    ForEach(meats, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
            }
            Divider()
            
            HStack{
                Text("Choose first vegetable: ")
                Picker("Select a meat type", selection: $veg1) {
                    ForEach(veggies, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
            }
            
            Divider()
            
            HStack{
                Text("Choose second vegetable: ")
                Picker("Select a meat type", selection: $veg2) {
                    ForEach(veggies, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
            }
            
            Divider()
                .padding(.bottom, 19.0)
            
            Button("Place Order"){
                dataManager.addOrder(email: <#T##String#>, location: <#T##String#>, itemname: <#T##String#>)
                dismiss()
            }
        }
    }
}

struct Sandwich_Previews: PreviewProvider {
    static var previews: some View {
        Sandwich()
    }
}
