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
    
    let backgroundColor = Color(red: 33/255, green: 160/255, blue: 160/255)
    let cardBackgroundColor = Color(red: 35/255, green: 43/255, blue: 68/255)
    let buttonColor = Color(red: 30/255, green: 243/255, blue: 223/255)
    let textFieldColor = Color(red: 72/255, green: 79/255, blue: 102/255)
    let imageColor = Color(red: 147/255, green: 154/255, blue: 179/255)
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [backgroundColor, cardBackgroundColor], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("SIGN IN")
                    .padding(10)
                    .font(.system(size: 24))
                    .background(buttonColor)
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(imageColor)
                    .frame(width: 100, height: 100)
                    .padding(10)
                
                HStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(imageColor)
                        .padding(.leading, 10)
                    TextField("username", text: $username)
                        .frame(height: 30)
                        .textFieldStyle(.plain)
                        .foregroundColor(imageColor)
                        .background(textFieldColor)
                        .keyboardType(.emailAddress)
                        .padding(.trailing, 10)
                }
                .frame(height: 35)
                .background(textFieldColor)
                .cornerRadius(8)
                .padding(.horizontal, 10)
                
                HStack {
                    Image(systemName: "lock.circle")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(imageColor)
                        .padding(.leading, 10)
                    SecureField("password", text: $password)
                        .frame(height: 30)
                        .textFieldStyle(.plain)
                        .foregroundColor(imageColor)
                        .background(textFieldColor)
                        .keyboardType(.emailAddress)
                        .padding(10)
                }
                .frame(height: 35)
                .background(textFieldColor)
                .cornerRadius(8)
                .padding([.horizontal, .top], 10)
                
                HStack{
                    Button {
                        print("Remember!!")
                    } label: {
                        Text("Remember-me")
                            .foregroundColor(.teal)
                            .font(.system(size: 13))
                    }
                    Spacer()
                    Button {
                        print("Forgot!!")
                    } label: {
                        Text("Forgot password?")
                            .foregroundColor(.teal)
                            .font(.system(size: 13))
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                
                Button {
                    print("Logar")
                } label: {
                    Text("LOGIN")
                        .foregroundColor(Color.black)
                        .fontWeight(.semibold)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(buttonColor)
                }
                .cornerRadius(8)
                .padding(10)
                Button {
                    print("New Account!!")
                } label: {
                    Text("Create new account")
                        .foregroundColor(.teal)
                        .font(.system(size: 14))
                        .padding(.bottom)
                }
            }
            .background(cardBackgroundColor)
            .padding(EdgeInsets(top: 120, leading: 40, bottom: 200, trailing: 40))
        }
    }
}


#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
