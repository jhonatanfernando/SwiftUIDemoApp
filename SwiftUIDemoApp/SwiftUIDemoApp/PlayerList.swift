//
//  PlayerList.swift
//  SwiftUIDemoApp
//
//  Created by Jhonatan Fernando on 29/10/19.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        
        //NavigationView
        //{
                List(playersData, id: \.id)
                { (player) in
                  
                    NavigationLink(destination: PlayerDetail(player: player)) {
                        PlayerRow(player: player)
                    }
                    
                }.navigationBarTitle(Text("Jogadores"))
        //}
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
