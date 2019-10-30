//
//  PlayerRow.swift
//  SwiftUIDemoApp
//
//  Created by Jhonatan Fernando on 29/10/19.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct PlayerRow : View {
    
    var player : Player
    
    var body: some View {
        
        HStack
            {
                player.image
                .resizable()
                .frame(width: 56.0, height: 56.0)
                .aspectRatio(CGSize(width:50, height: 50), contentMode: .fit)
                Text(player.name)
                Spacer()
        }.padding(.leading, 10)
    }
}


struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: playersData[0])
    }
}

