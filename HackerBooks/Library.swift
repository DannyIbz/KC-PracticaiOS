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
   
    // Número total de Tags
    var tagsCount : Int {
        
        get{
            return lib.keys.count
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
    
    // Libro que está en la posición "index" de aquellos bajo un cierto tag
    func book(forTagName name: Tag, at: Int) -> Book? {
        
        let bookAtIndex = lib[name]?.sorted()[at]
        
        return bookAtIndex
    }
}
