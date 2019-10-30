//
//  Player.swift
//  SwiftUIDemoApp
//
//  Created by Jhonatan Fernando on 29/10/19.
//  Copyright © 2019 Jhonatan Fernando. All rights reserved.
//

import SwiftUI

struct Player: Hashable, Codable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    var number: Int
    var position: String
}

extension Player {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
