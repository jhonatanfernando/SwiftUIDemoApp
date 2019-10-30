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
            
          /*  Text("User Name").font(.headline).foregroundColor(.white)
            TextField("User Name", text: $username)
            .font(.headline).foregroundColor(.black)
            .background(Color.white)
            
            
            Text("Password").font(.headline).foregroundColor(.white)
            SecureField("Password", text: $password)
            .font(.headline).foregroundColor(.black)
            .background(Color.white)*/
            
            
            Button(action:
                       {
                          
                        NavigationView
                             {
                         NavigationLink(destination: PlayerList()) {
                             HStack{
                                   Spacer()
                        
                                   Text("Entrar")
                                   .font(.title)
                                   .foregroundColor(.white)
                                   
                                   Spacer()
                               }.padding(.vertical,3)
                                .background(Color.red)
                         }
                         }
                           
                       }) {
                           HStack{
                               Spacer()
                               
                               Text("Entrar")
                               .font(.title)
                               .foregroundColor(.white)
                               
                               Spacer()
                           }.padding(.vertical,3)
                            .background(Color.red)
                       }
        }
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
