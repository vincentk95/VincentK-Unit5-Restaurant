//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by Vincent on 09/03/2018.
//  Copyright © 2018 Native App Studio. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
