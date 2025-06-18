//
//  SignIn.swift
//  EphsSchoolApp
//
//  Created by Sahasra Kaparthi on 6/18/25.
//
import SwiftUI

struct SignIn: View {
    //This is just a place holder till we figure out how the user will login
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.white.ignoresSafeArea()

            Image("EPLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 110, height: 110)
                .padding([.leading, .top], 0)

            VStack(spacing: 30) {
                Text("Sign In")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(Color(red: 194/255, green: 64/255, blue: 64/255)) // #C24040

                Text("Enter your username and password")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundColor(.black)

                VStack(spacing: 24) {
                    TextField("Username", text: $username)
                        .textInputAutocapitalization(.none)
                        .disableAutocorrection(true)
                        .padding(.bottom, 8)
                        .overlay(Rectangle().frame(height: 1).foregroundColor(.gray), alignment: .bottom)

                    SecureField("Password", text: $password)
                        .padding(.bottom, 8)
                        .overlay(Rectangle().frame(height: 1).foregroundColor(.gray), alignment: .bottom)
                }
                .padding(.horizontal, 40)

                Button(action: {
                    // add the next screen onto it later
                }) {
                    Text("LOGIN")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color(red: 194/255, green: 64/255, blue: 64/255))
                        .cornerRadius(20)
                }
                .padding(.horizontal, 40)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.top, 60)
        }
    }
}


#Preview {
    SignIn()
}
