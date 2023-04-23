//
//  OrderInteract.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct OrderInteract: View {
    
    var orderData: OrderData
    @Binding var sheet: Bool
    
    var body: some View {
        VStack{
            Text("\(orderData.email) has ordered \(orderData.itemname) from \(orderData.location)")
            HStack{
                Button("Accept"){
                    print("order accepted")
                    sheet = false
                }
                Button("Decline"){
                    print("order declined")
                    sheet = false
                }
            }
        }
    }
}

struct OrderInteract_Previews: PreviewProvider {
    static var previews: some View {
        OrderInteract(orderData: OrderData(email: "Isaac", itemname: "burrito", location: "rendez"), sheet: .constant(true))
    }
}
