//
//  Register.swift
//  CombineInSwiftUI
//
//  Created by ahmad shiddiq on 17/09/22.
//

import SwiftUI

struct Register: View {
    @StateObject private var registerViewModel = RegisterViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("USERNAME")) {
                        TextField("Username", text: $registerViewModel.username)
                            .autocapitalization(.none)
                    }
                    Section(header: Text("PASSWORD"), footer: Text(registerViewModel.inlineErrorForPassword).foregroundColor(.red)) {
                        SecureField("Password", text: $registerViewModel.password)
                        SecureField("Password again", text: $registerViewModel.passwordAgain)
                    }
                }
                Button(action: {}) {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(height: 45)
                        .overlay(Text("Submit").foregroundColor(.white))
                }.padding().disabled(!registerViewModel.isValid)
            }.navigationTitle("Register")
        }
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
