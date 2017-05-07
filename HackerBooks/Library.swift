//
//  Library.swift
//  HackerBooks
//
//  Created by Daniel Sánchez on 31/1/17.
//  Copyright © 2017 Daniel Sánchez. All rights reserved.
//

import Foundation

typealias BooksArray = [Book]

class Library {
    
    var books : MultiDictionary<Tag, Book>
    
    //MARK: - Initialization
    init(books : BooksArray) {
        
        self.books = MultiDictionary<Tag, Book>()
        
        for book in books {
            
            for tag in book.tags {
                
                self.books.insert(value: book, forKey: tag)
            }
        }
    }
    
    
    //MARK: - Accessors
    // Número total de libros
    var booksCount : Int {
        
        get{
            return books.countUnique
        }
        
    }
    
    // Número total de Tags
    var tagsCount : Int {
        
        get{
            return books.keys.count
        }
    }
    
    // Array de Tags
    var tags : [Tag] {
        
        get {
            var taags : [Tag] = []
            
            for tag in books.keys {
            
                taags.append(tag)
            }
            return taags
        }
    }
    
    // Cantidad de libros que hay de una misma temática
    func bookCount(forTagName name: Tag) -> Int {
        
        return books.buckets.count
    }
   
    // Array de los libros que hay de una misma temática
    func books(atIndex index: Int, forTagName name: Tag) -> [Book]? {
        
        let books = self.books[name]?.sorted()
        return books
    }
    
    // Libro que está en la posición "index" de aquellos bajo un cierto tag
    func indexBook(forTagName name: Tag, at: Int) -> Book? {
        
        let bookAtIndex = self.books[name]?.sorted()[0]
        
        return bookAtIndex
    }
}
