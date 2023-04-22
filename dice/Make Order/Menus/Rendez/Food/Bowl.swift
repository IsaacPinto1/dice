//
//  Bowl.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct Bowl: View {
    @Environment(\.dismiss) private var dismiss
    
    @State private var meat = "Chicken"
    let meats = ["Chicken", "Steak"]
    
    @State private var rice = "Brown"
    let rices = ["Mexican", "Brown"]

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
                Text("Choose rice type: ")
                Picker("Select a meat type", selection: $rice) {
                    ForEach(rices, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
            }
            
            Divider()
                .padding(.bottom, 19.0)
            
            Button("Place Order"){
                print("Order placed")
                dismiss()
            }
        }
    }
}

struct Bowl_Previews: PreviewProvider {
    static var previews: some View {
        Bowl()
    }
}
