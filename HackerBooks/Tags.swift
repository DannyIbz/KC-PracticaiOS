//
//  Tags.swift
//  HackerBooks
//
//  Created by Daniel Sánchez on 2/2/17.
//  Copyright © 2017 Daniel Sánchez. All rights reserved.
//

import Foundation

typealias tags = Array<String>

class Tags {
    
    let name : tags?
    var tagList : String
    
    init(name: tags?,
         tagList: String){
        self.name = name
        self.tagList = tagList
    }
    
    var tagList = name.map { $0 }
    
}
