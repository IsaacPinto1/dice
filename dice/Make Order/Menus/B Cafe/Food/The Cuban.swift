//
//  The Cuban.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct The_Cuban: View {
    @EnvironmentObject var dataManager: DataManager
    @Binding var userEmail:String

    @Environment(\.dismiss) private var dismiss
    var body: some View {
        Button("Place Order"){
            dataManager.addOrder(email: userEmail, location: "Bruin Cafe", itemname: "The Cuban")
            dismiss()
        }
    }
}

struct The_Cuban_Previews: PreviewProvider {
    static var previews: some View {
        The_Cuban(userEmail: .constant("test"))
    }
}
