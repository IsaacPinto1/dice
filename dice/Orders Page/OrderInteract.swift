//
//  OrderInteract.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct OrderInteract: View {
    
    @Binding var orderData: OrderData
    @Binding var sheet: Bool
    
    var body: some View {
        VStack{
            Text("\(orderData.name) has ordered \(orderData.food)")
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
        OrderInteract(orderData: .constant(OrderData(name: "Isaac", food: "burrito")), sheet: .constant(true))
    }
}
