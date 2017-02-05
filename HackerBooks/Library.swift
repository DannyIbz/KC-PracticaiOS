//
//  Library.swift
//  HackerBooks
//
//  Created by Daniel Sánchez on 31/1/17.
//  Copyright © 2017 Daniel Sánchez. All rights reserved.
//

import Foundation

class Library {
    
    var lib = MultiDictionary<Tag, Book>()
    
    //MARK: - Accessors
    
    // Número total de libros
    var booksCount : Int {
        
        get{
            return lib.countUnique
        }
    }
   
    // Cantidad de libros que hay de una misma temática
    func bookCount(forTagName name: Tag) -> Int {
        
        return lib.buckets.count
    }
   
    // Array de los libros que hay de una misma temática
    func books(atIndex index: Int, forTagName name: Tag) -> [Book]? {
        
        let books = lib[name]?.sorted()
        return books
    }
}
