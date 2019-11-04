//
//  PlayerDetail.swift
//  SwiftUIDemoApp
//
//  Created by Jhonatan Fernando on 29/10/19.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct PlayerDetail: View {
    
    var player : Player
        
        var body: some View {
            VStack {
                Spacer()
                
                HStack(alignment: .center) {
                   Spacer()
                   Text(String(player.number))
                       .font(.system(size: 60))
                   .foregroundColor(.white)
                    Spacer()
                }.offset(x: -5, y: -5)
                
                 Spacer()
   
                CircleImage(image: player.image)
                    .offset(x: 0, y: 60)
                
                VStack(alignment: .leading) {
                    
                    HStack(alignment: .center) {
                        Spacer()
                        Text(player.name)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        Spacer()
                    }.offset(x: 0, y: 40)
                    
                    HStack(alignment: .center) {
                        Spacer()
                        Text(player.position)
                            .font(.largeTitle)
                        .foregroundColor(.white)
                         Spacer()
                    }.offset(x: 0, y: 40)
                }
                .offset(x: 0, y: 5)
                .padding(.bottom, 0)

                Spacer()
            }.background(Image("shirt")
            .resizable()
            .scaledToFill()
            .clipped())
            .navigationBarTitle(Text(player.name))

        }
    }


struct PlayerDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(player: playersData[0])
    }
}
