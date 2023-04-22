//
//  DeliverPage.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct DeliverPage: View {
    
    @State var order = OrderData(name: "Isaac", food: "Burrito")
    @State var order1 = OrderData(name: "Jeff", food: "Meat")
    
    var body: some View {
        VStack{
            Text("Current Orders: ")
                .padding(.leading, 11.0)
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size:36))
            Divider()
            ScrollView{
                Group{
                    Order(orderData: $order)
                    Order(orderData: $order1)
                    Order(orderData: $order)
                    Order(orderData: $order)
                    Order(orderData: $order1)
                    Order(orderData: $order)
                    Order(orderData: $order)
                }
                Group{
                    Order(orderData: $order)
                    Order(orderData: $order)
                    Order(orderData: $order)
                    Order(orderData: $order)
                    Order(orderData: $order)
                    Order(orderData: $order)
                    Order(orderData: $order)
                }
            }
            Spacer()
            
        }
    }
}

struct DeliverPage_Previews: PreviewProvider {
    static var previews: some View {
        DeliverPage()
    }
}
