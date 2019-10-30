//
//  CircleImage.swift
//  SwiftUIDemoApp
//
//  Created by Jhonatan Fernando on 29/10/19.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    
    var image : Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 1))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: playersData[0].image)
    }
}
