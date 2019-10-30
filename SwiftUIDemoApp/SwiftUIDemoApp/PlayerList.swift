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
        
        NavigationView
        {
                List(playersData, id: \.id)
                { (player) in
                     PlayerRow(player: player)
                }.navigationBarTitle(Text("Players"))
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
