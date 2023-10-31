//
//  ContentView.swift
//  Login
//
//  Created by Cesar Silva on 31/10/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            Color.teal.edgesIgnoringSafeArea(.all)
            VStack {
                Text("SIGN IN")
                    .font(.system(size: 24))
                    .padding(EdgeInsets(top: 20, leading: 40, bottom: 20, trailing: 40))
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.gray)
                    .frame(width: 100, height: 100)
                    .padding(10)
                TextField("username", text: $username)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(.black)
                    .keyboardType(.emailAddress)
                    .padding(10)
                SecureField("password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .foregroundColor(.black)
                    .keyboardType(.emailAddress)
                    .padding(10)
                
                HStack{
                    Text("Remember-me")
                        .font(.system(size: 12))
                        .foregroundColor(.teal)
                    Spacer()
                    ZStack{
                        Text("Forgot your password?")
                            .font(.system(size: 12))
                            .foregroundColor(.teal)
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                
                Button {
                    print("Logar")
                } label: {
                    Text("LOGIN")
                        .foregroundColor(Color.white)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(Color.teal)
                }
                .cornerRadius(8)
                .padding(10)

                
            }
            .background(Color.white)
            .padding(EdgeInsets(top: 120, leading: 40, bottom: 200, trailing: 40))
        }
    }
}


#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
