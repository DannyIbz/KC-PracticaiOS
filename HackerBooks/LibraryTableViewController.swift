//
//  LibraryTableViewController.swift
//  HackerBooks
//
//  Created by Daniel Sánchez on 6/2/17.
//  Copyright © 2017 Daniel Sánchez. All rights reserved.
//

import UIKit

class LibraryTableViewController: UITableViewController {
    
    //MARK: - Properties
    let model : Library
    let getTags : Tag
    
    
    //MARK: - Initialization
    init(model: Library,
         getTags: Tag) {
        self.model = model
        self.getTags = getTags
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    //MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // Incomplete implementation, return the number of sections
        // Secciónes por cada Tag distinto
        
        return model.tagsCount
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Incomplete implementation, return the number of rows
        // Número de libros dentro de cada Tag
        
        return model.bookCount(forTagName: getTags)
    }
    
    
    
}
