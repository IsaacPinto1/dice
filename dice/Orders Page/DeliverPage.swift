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
    
    func test () {
        shouldPresentSheet.toggle()
    }
    
    var body: some View {
        VStack{
            Text("Current Orders: ")
                .padding(.leading, 11.0)
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size:36))
            Divider()
            NavigationView{
                List(dataManager.orders, id: \.email){ order in
//                    Text("\(order.email) wants \(order.itemname) from \(order.location)")
                    Button ("\(order.email) wants a \(order.itemname) from \(order.location)", action: test)
                        .sheet(isPresented: $shouldPresentSheet) {
                    } content: {
                        OrderInteract(orderData: OrderData(email: order.email, itemname: order.itemname, location: order.location), sheet: $shouldPresentSheet)
                    }
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
