//
//  Profile.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI
import Firebase

struct Profile: View {
    
    @Binding var SignedIn: String
    @Binding var userEmail: String
    
    
    
    var body: some View {
        VStack{
            Text("Email: \(userEmail)")
            Button("Sign Out") {
                SignedIn = "Sign In"
                signOut()
            }
        }
    }
    
    func signOut(){
        do {
            try Auth.auth().signOut()
        }
        catch {
            print("Nope!")
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(SignedIn: .constant("Home"), userEmail: .constant("qert"))
    }
}
