//
//  LoginView.swift
//  MyGoal
//
//  Created by zahid khan on 11/25/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack (spacing: 24) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 120)
                    .padding(.vertical, 32)
                
                //Input Fields
                VStack {
                    
                    // Email Field
                    InputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@email.com")
                    .autocapitalization(.none)
                    
                    // Password Field
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter Password",
                              isSecuredField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                //Log In Button
                Button {
                    print("Log In...")
                } label: {
                    HStack(spacing: 2){
                        Text("Log In")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width-32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)
                
                
                Spacer()
                
                //Sign up options
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack{
                        Text("Dont't have account?")
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
