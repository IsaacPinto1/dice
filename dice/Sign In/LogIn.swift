//
//  LogIn.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct LogIn: View {
    
    @Binding var SignedIn: String
    
    var body: some View {
        VStack{
            Text("  Create Account")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size:36))
            Divider()
            Text("Username")
                .padding(.leading, 15.0)
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.all, 30)
                .overlay( RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(.black, lineWidth: 3)
                    .padding(.horizontal, 10))
                .frame( height: 100)
            Text("Email")
                .padding(.leading, 15.0)
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.all, 30)
                .overlay( RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(.black, lineWidth: 3)
                    .padding(.horizontal, 10))
                .frame( height: 100)
            Text("Password")
                .padding(.leading, 15.0)
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.all, 30)
                .overlay( RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(.black, lineWidth: 3)
                    .padding(.horizontal, 10))
                .frame( height: 100)
            Button("Create Account") {
                print("Signed in")
                SignedIn = "Sign In"
            }
        }
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn(SignedIn: .constant("Create Account"))
    }
}
