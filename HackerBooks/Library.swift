//
//  Library.swift
//  HackerBooks
//
//  Created by Daniel Sánchez on 31/1/17.
//  Copyright © 2017 Daniel Sánchez. All rights reserved.
//

import Foundation

class Library {
    
    //MARK: - Utility types
    typealias BookArray = [Book]
    typealias TagArray = Array<String>
    
    //MARK: - Properties
    var books   :   BookArray
    var tags    :   TagArray
    var booksCount: Int{
        
        get{
            let count: Int = self.books.count
        }
    }
    
    //MARK: - Initialization
    init(books: BookArray,
         tags: TagArray,
         booksCount: Int) {
        
        self.books
        self.tags
        self.bookCount
    }
    
    //MARK: - Utils
    func bookCount(forTagName name: TagName) -> Int
    
    func books(forTagName name: TagName) -> [Book]?
    
    func book(fotTagName name: TagName, at:Int) -> Book?
}
