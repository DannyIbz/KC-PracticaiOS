//
//  Tags.swift
//  HackerBooks
//
//  Created by Daniel Sánchez on 2/2/17.
//  Copyright © 2017 Daniel Sánchez. All rights reserved.
//

import Foundation

typealias Tags = Set<Tag>

class Tag {
    
    let name : String
    
    init(name: String) {
        self.name = name
    }
    
}

extension Tag : Hashable {
    
    var hashValue : Int {
        return name.hashValue
    }
    
    static func == (lhs: Tag, rhs: Tag) -> Bool {
        return lhs.name == rhs.name
    }
}
