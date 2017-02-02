//
//  Errors.swift
//  HackerBooks
//
//  Created by Daniel Sánchez on 31/1/17.
//  Copyright © 2017 Daniel Sánchez. All rights reserved.
//

import Foundation

enum BooksError : Error {
    
    case wrongURLFormat
    case resourcePointedByURLNotReachable
    case jsonParsingError
    case noTags
}
