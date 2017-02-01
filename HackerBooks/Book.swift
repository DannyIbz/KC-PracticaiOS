//
//  Book.swift
//  HackerBooks
//
//  Created by Daniel Sánchez on 31/1/17.
//  Copyright © 2017 Daniel Sánchez. All rights reserved.
//

import Foundation

typealias Authors = Array<String>
typealias Tags = Array<String>

class Book {
    
    //MARK: - Stored Properties
    let title   :   String?
    let author  :   Authors?
    let tags    :   Tags?
    let imageURL:   URL
    let url     :   URL
    
    //MARK: - Intialization
    init(title: String?,
         author: Authors?,
         tags: Tags?,
         imageURL: URL,
         url: URL)
    {
        self.title = title
        self.author = author
        self.tags = tags
        self.imageURL = imageURL
        self.url = url
    }
}
