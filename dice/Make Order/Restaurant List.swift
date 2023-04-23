//
//  Restaurant List.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct Restaurant_List: View {
    
    @EnvironmentObject var dataManager: DataManager
    @Binding var userEmail: String
    
    var body: some View {
        VStack{
            Text("Choose a Restaurant: ")
                .padding(.leading, 11.0)
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size:36))
            Divider()
            Spacer()
            HStack{
                Restaurant_Icon(image:"the-study", name: "The Study", userEmail: $userEmail)
                    .padding(.trailing, 50)
                    .environmentObject(dataManager)
                Restaurant_Icon(image:"rendez", name: "Rendezvous West", userEmail: $userEmail)
            }
                .padding(.bottom, 50.0)
            HStack{
                Restaurant_Icon(image:"bcafe", name: "Bruin Cafe", userEmail: $userEmail)
            }
            Spacer()
        }
    }
}

struct Restaurant_List_Previews: PreviewProvider {
    static var previews: some View {
        Restaurant_List()
    }
}
