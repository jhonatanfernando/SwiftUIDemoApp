//
//  ContentView.swift
//  SwiftUIDemoApp
//
//  Created by Jhonatan Fernando on 27/10/19.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showLoginView: Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack{
                NavigationLink(destination: PlayerList())
                {
                    HStack{
                    
                        Spacer()
                        
                        Text("Entrar")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(12)
                        
                         Spacer()
                    }.background(Color.red)
                }
            }.background(Image("background"))
        }
        
        
        /*NavigationView
        {
            NavigationLink(destination: PlayerList())
            {
                Text("Entrar")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(12)
            }.background(Color.red)
             .cornerRadius(12)
             .navigationBarHidden(true)
        }*/
        
    
        /*VStack{
            
            Spacer()
            
          if showLoginView {
              PlayerList()
          }
          else
          {
           Button(action:
                       {
                          self.showLoginView = true
                       })
                        {
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
        }
        .background(Image("background")
        .resizable()
        .scaledToFill()
        .clipped())
        .edgesIgnoringSafeArea([.top]) */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
