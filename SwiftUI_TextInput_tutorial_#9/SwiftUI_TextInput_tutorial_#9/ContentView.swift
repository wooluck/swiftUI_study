//
//  ContentView.swift
//  SwiftUI_TextInput_tutorial_#9
//
//  Created by 우럭mac on 2021/11/15.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack (spacing: 10){
            
            HStack {
                
                TextField("사용자 이름", text: $username)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button {
                    self.username = ""
                } label: {
                    if(self.username.count > 0) {
                    Image(systemName: "multiply.circle.fill")
                        .font(.system(size: 25))
                        .foregroundColor(Color.secondary)
                    }
                }

                
            }
            
            HStack {
                
                SecureField("비밀번호", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button {
                    self.password = ""
                } label: {
                    if(self.password.count > 0) {
                    Image(systemName: "multiply.circle.fill")
                        .font(.system(size: 25))
                        .foregroundColor(Color.secondary)
                    }
                }
            }
            
            Text("입력한 비번 : \(password)")
        }.padding(.horizontal, 50)
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
