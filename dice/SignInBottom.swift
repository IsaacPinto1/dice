//
//  SignInBottom.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI

struct SignInBottom: View {
    
    @Binding var SignedIn: String
    
    var body: some View {
        ZStack(){
            RoundedRectangle(cornerRadius: 40)
                .fill(.white)
            VStack(){
                Spacer()
                    .frame(height: 20.0)
                Circle()
                    .fill(Color.red)
                    .frame(width: 100.0, height: 100.0)
                Text("Welcome to Slobbin!")
                Text("Sign in and start ordering")
                    .padding(.bottom, 19.0)
                Text("Email")
                    .padding(.leading, 15.0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding(30)
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
                Button("Sign In") {
                    print("Signed in")
                    SignedIn = "Home"
                }
                .frame(width: 300, height: 50)
                .overlay( RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(.black, lineWidth: 3)
                    .padding(.horizontal, 10))
                Button("Create Account") {
                    print("Signed in")
                    SignedIn = "Create Account"
                }
                .frame(width: 300, height: 50)
                .overlay( RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(.black, lineWidth: 3)
                    .padding(.horizontal, 10))
            }
        }
    }
}

struct SignInBottom_Previews: PreviewProvider {
    static var previews: some View {
        SignInBottom(SignedIn: .constant(""))
    }
}
