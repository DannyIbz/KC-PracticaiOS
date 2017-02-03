//
//  Tags.swift
//  HackerBooks
//
//  Created by Daniel Sánchez on 2/2/17.
//  Copyright © 2017 Daniel Sánchez. All rights reserved.
//

import Foundation

typealias Tags = Set<Tag>

class Tag: Hashable {
    
    let name : String
    var hashName : String {
        return self.name
    }
    
    init(name: String) {
        self.name = name
    }
}
