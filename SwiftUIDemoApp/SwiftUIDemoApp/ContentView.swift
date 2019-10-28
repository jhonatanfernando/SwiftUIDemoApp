//
//  ContentView.swift
//  SwiftUIDemoApp
//
//  Created by Jhonatan Fernando on 27/10/19.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username : String = ""
    @State private var password : String = ""
    
    var body: some View {
        
            
        VStack(alignment: .leading){
            
            Spacer()
            
            Text("User Name").font(.headline).foregroundColor(.white)
            TextField("User Name", text: $username)
            .font(.headline).foregroundColor(.black)
            .background(Color.white)
            
            
            Text("Password").font(.headline).foregroundColor(.white)
            SecureField("Password", text: $password)
            .font(.headline).foregroundColor(.black)
            .background(Color.white)
            
            Button(action:
                       {
                           print("Test")
                           
                       }) {
                           HStack{
                               Spacer()
                               
                               Text("Login")
                               .font(.headline)
                               .foregroundColor(.white)
                               
                               Spacer()
                           }.padding(.vertical, 10)
                            .background(Color.red)
                            .padding(.horizontal, 5)
                       }
            
            
            Spacer()
        }.padding(.horizontal)
        .background(Image("background")
        .resizable()
        .scaledToFill()
        .clipped())
            .edgesIgnoringSafeArea([.top])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
