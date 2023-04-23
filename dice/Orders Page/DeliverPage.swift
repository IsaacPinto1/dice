//
//  DeliverPage.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct DeliverPage: View {
    @EnvironmentObject var dataManager: DataManager
    @State var shouldPresentSheet: Bool = false
    
    
    
    var body: some View {
        VStack{
            Text("Current Orders: ")
                .padding(.leading, 11.0)
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size:36))
            Divider()
            NavigationView{
                List(dataManager.orders, id: \.ID){ order in
                    OrderButton(order: order)
                        .environmentObject(dataManager)
                }
            }
            Button{
                dataManager.fetchOrders()
            } label: {
                Text("Refresh")
            }
            Spacer()
        }
    }
}

struct OrderButton: View{
    @EnvironmentObject var dataManager: DataManager
    
    @State var display: Bool = false
    var order: OrderData
    
    func test(){
        display.toggle()
    }
    
    var body: some View{
        Button ("\(order.email) wants a \(order.itemname) from \(order.location)", action: test)
            .sheet(isPresented: $display) {
        } content: {
            OrderInteract(orderData: OrderData(email: order.email, itemname: order.itemname, location: order.location, ID: order.ID), sheet: $display)
                .environmentObject(dataManager)
        }
    }
}

struct DeliverPage_Previews: PreviewProvider {
    static var previews: some View {
        DeliverPage()
    }
}
