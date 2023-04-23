//
//  SwiftUIView.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI
import Firebase

class DataManager: ObservableObject{
    @Published var orders: [OrderData] = []
    
    init(){
        fetchOrders()
        print("orders:")
        print(orders)
    }
    
    func fetchOrders(){
        orders.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Orders")
        ref.getDocuments { snapshot, error in
            guard error == nil else{
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot{
                for document in snapshot.documents{
                    let data = document.data()
                    
                    let email = data["email"] as? String ?? ""
                    let itemname = data["itemname"] as? String ?? ""
                    let location = data["location"] as? String ?? ""
                    
                    let order = OrderData(email: email, itemname: itemname, location: location)
                    self.orders.append(order)
                }
            }
            
        }
    }
    
    func addOrder(email: String, location: String, itemname: String){
        let db = Firestore.firestore()
        let ref = db.collection("Orders").document()
        ref.setData(["email": email, "location": location, "itemname": itemname]){ error in
            if let error = error{
                print(error.localizedDescription)
            }
        }
    }
}
