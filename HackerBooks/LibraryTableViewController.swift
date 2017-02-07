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
    
    
    //MARK: - Initialization
    init(model: Library) {
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // Incomplete implementation, return the number of sections
        return model.booksCount
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Incomplete implementation, return the number of rows
        
        return 0
    }
    
    
    //MARK: - Utils
    func getTagName(forSection section: Int) -> Tag {
        
        
    }
    
}
