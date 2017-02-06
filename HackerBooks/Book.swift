//
//  Book.swift
//  HackerBooks
//
//  Created by Daniel Sánchez on 31/1/17.
//  Copyright © 2017 Daniel Sánchez. All rights reserved.
//

import Foundation

typealias Authors = Array<String>

class Book {
    
    //MARK: - Stored Properties
    let title   :   String?
    let author  :   Authors?
    let tags    :   Tag
    let imageURL:   URL
    let url     :   URL
    
    //MARK: - Intialization
    init(title: String?,
         author: Authors?,
         tags: Tag,
         imageURL: URL,
         url: URL)
    {
        self.title = title
        self.author = author
        self.tags = tags
        self.imageURL = imageURL
        self.url = url
    }
    
    //MARK: - Proxies
    func proxieForEquality() -> String {
        
        return "\(title?.hashValue)\(author)\(tags)\(imageURL)\(url)"
    }
    
    func proxieForComparison() -> String {
        
        return proxieForEquality()
    }
}

extension Book: Hashable {
    
    var hashValue : Int {
        
        guard let title = title else {
            return 0
        }
        
        return title.hashValue
    }
    
    static func == (lhs: Book, rhs: Book) -> Bool {
        return lhs.title == rhs.title
    }
}

extension Book: Comparable {
    
    public static func <(lhs: Book, rhs: Book) -> Bool {
        
        return (lhs.proxieForComparison() < rhs.proxieForComparison())
    }
}
