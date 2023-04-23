//
//  OrderInteract.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct OrderInteract: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    var orderData: OrderData
    @Binding var sheet: Bool
    
    var body: some View {
        VStack{
            Text("\(orderData.email) has ordered \(orderData.itemname) from \(orderData.location)")
            HStack{
                Button("Accept"){
                    print("order accepted")
                    dataManager.removeOrder(ID: orderData.ID)
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
        OrderInteract(orderData: OrderData(email: "Isaac", itemname: "burrito", location: "rendez", ID: "123"), sheet: .constant(true))
    }
}
