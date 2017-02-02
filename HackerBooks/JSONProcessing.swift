//
//  JSONProcessing.swift
//  HackerBooks
//
//  Created by Daniel Sánchez on 31/1/17.
//  Copyright © 2017 Daniel Sánchez. All rights reserved.
//

import Foundation
import UIKit

//MARK: - Aliases
typealias JSONObject        =   AnyObject
typealias JSONDictionary    =   [String: JSONObject]
typealias JSONArray         =   [JSONDictionary]

//MARK: - Decodification for Book
func decode(HackerBooksBook json: JSONDictionary) throws -> Book {
    
    guard let imageUrl = json["image_url"] as? String,
          let image = URL(string: imageUrl) else {
            
            throw BooksError.resourcePointedByURLNotReachable
    }
    
    guard let urlString = json["pdf_url"] as? String,
        let url = URL(string: urlString) else {
            
            throw BooksError.wrongURLFormat
    }
    
    let title   =   json["title"] as? String
    let author  =   json["authors"] as? Authors
    let tags    =   json["tags"] as? String
    
    return Book(title: title,
                author: author,
                tags: tags,
                imageURL: image,
                url: url)
}

func decode(HackerBooksBook json: JSONDictionary?) throws -> Book {
    
    guard let json = json else {
        throw BooksError.jsonParsingError
    }
    
    return try decode(HackerBooksBook: json)
}


//MARK: - Decodification for Tags
func decode(BooksTags json: JSONDictionary) throws -> Tags {
    
    guard let tagsFromJson = json["tags"] as? String else {
        
        throw BooksError.noTags
    }
    
    return Tags(name: tagsFromJson)
}

func decode(BooksTags json: JSONDictionary?) throws -> Tags {
    
    guard let json = json else {
        throw BooksError.jsonParsingError
    }
    
    return try decode(BooksTags: json)
}
