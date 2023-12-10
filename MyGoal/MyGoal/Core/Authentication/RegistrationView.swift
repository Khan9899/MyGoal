//
//  RegistrationView.swift
//  MyGoal
//
//  Created by zahid khan on 11/25/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmedpassword = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 120)
                    .padding(.vertical, 32)
                
                VStack {
                    
                    // Email Field
                    InputView(text: $fullname,
                              title: "Name",
                              placeholder: "Enter Name")
                    
                    InputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@email.com")
                    .autocapitalization(.none)

                    // Password Field
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "Enter Password",
                              isSecuredField: true)
                    
                    InputView(text: $confirmedpassword,
                              title: "Confirmed Password",
                              placeholder: "Confirmed Password",
                              isSecuredField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                Button {
                    print("Register..")
                } label: {
                    HStack(spacing: 2){
                        Text("Register")
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
                
                Button {
                    dismiss()
                } label: {
                    HStack{
                        Text("Already have account?")
                        Text("Sign In")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
