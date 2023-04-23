//
//  SignInBottom.swift
//  dice
//
//  Created by Isaac Pinto on 4/22/23.
//

import SwiftUI
import Firebase

struct SignInBottom: View {
    
    @State private var email = ""
    @State private var password = ""
    
    @Binding var SignedIn: String
    @Binding var userEmail: String
    
    var body: some View {
        ZStack(){
            RoundedRectangle(cornerRadius: 40)
                .fill(.white)
                .frame(height:650)
            VStack(){
                Circle()
                    .fill(Color.brown)
                    .frame(width: 100.0, height: 100.0)
                Text("Welcome to Slobbin!")
                    .foregroundColor(.black)
                Text("Sign in and start ordering")
                    .foregroundColor(.black)
                    .padding(.bottom, 19.0)
                Text("Email")
                    .padding(.leading, 15.0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("example@example.com", text: $email)
                    .foregroundColor(.black)
                    .padding(30)
                    .overlay( RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(.black, lineWidth: 3)
                        .padding(.horizontal, 10))
                    .frame( height: 100)
                Text("Password")
                    .padding(.leading, 15.0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                SecureField("Password", text: $password)
                    .foregroundColor(.black)
                    .padding(.all, 30)
                    .overlay( RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(.black, lineWidth: 3)
                        .padding(.horizontal, 10))
                    .frame( height: 100)
                Button("Sign In") {
                    print("Signed in")
                    login()
                }
                .frame(width: 300, height: 50)
                .overlay( RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(.black, lineWidth: 3)
                    .padding(.horizontal, 10))
                Button("Create Account") {
                    print("Account Created")
                    register()
                }
                .frame(width: 300, height: 50)
                .overlay( RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(.black, lineWidth: 3)
                    .padding(.horizontal, 10))
            }
        }
        .onAppear(){
            Auth.auth().addStateDidChangeListener {auth, user in if user != nil{
                print("test")
                SignedIn = "Home"
                userEmail = (user?.email)!
            }
            }
        }
    }
    func register(){
        Auth.auth().createUser(withEmail: email, password: password){result, error in if error != nil{
            print(error!.localizedDescription)
        }
        }
    }
    
    func login(){
        Auth.auth().signIn(withEmail: email, password: password){result, error in if error != nil{
            print(error!.localizedDescription)
        }
        }
    }
    
    
}

struct SignInBottom_Previews: PreviewProvider {
    static var previews: some View {
        SignInBottom(SignedIn: .constant(""), userEmail: .constant("ert"))
    }
}
