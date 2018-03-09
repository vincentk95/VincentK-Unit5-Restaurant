//
//  MenuItem.swift
//  Restaurant
//
//  Created by Vincent on 09/03/2018.
//  Copyright © 2018 Native App Studio. All rights reserved.
//

import Foundation

/// Struct that holds a menu item
struct MenuItem: Codable {
    var id: Int
    var name: String
    var description: String
    var price: Double
    var category: String
    var imageURL: URL
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case price
        case category
        case imageURL = "image_url"
    }
}

/// Struct that holds an array of menu items
struct MenuItems: Codable {
    let items: [MenuItem]
}
