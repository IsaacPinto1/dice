//
//  Order.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct Order: View {
    
    @Binding var orderData: OrderData
    @State var shouldPresentSheet = false
    
    var body: some View {
        VStack{
            Button("\(orderData.name) has ordered \(orderData.food)") {
                shouldPresentSheet.toggle()
            }.sheet(isPresented: $shouldPresentSheet) {
                print("Sheet dismissed!")
            } content: {
                OrderInteract(orderData: $orderData, sheet: $shouldPresentSheet)
            }
        }.frame(maxWidth: .infinity)
            .frame(height:80)
            .overlay( RoundedRectangle(cornerRadius: 20)
                .strokeBorder(.black, lineWidth: 3)
                .padding(.horizontal, 10))
    }
}

struct Order_Previews: PreviewProvider {
    static var previews: some View {
        Order(orderData: .constant(OrderData(name: "Isaac", food: "Burrito")))
    }
}
