//
//  PlayerMoreDetail.swift
//  SwiftUIDemoApp
//
//  Created by Jhonatan Fernando on 04/11/19.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct PlayerMoreDetail: View {
    var player : Player
    
    var body: some View {
        List{
        ZStack(alignment: .bottom) {
            player.image
            .resizable()
                .aspectRatio(contentMode: .fit)
            
            Rectangle()
                .frame(height: 80)
                .opacity(0.25)
                .blur(radius: 10)
            
            HStack{
                VStack(alignment: .leading, spacing: 8){
                    Text(player.name)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }.padding(.leading)
                 .padding(.bottom)
                
                Spacer()
            }
        }
        }
    }
}

struct PlayerMoreDetail_Previews: PreviewProvider {
    static var previews: some View {
        PlayerMoreDetail(player: playersData[0])
    }
}
