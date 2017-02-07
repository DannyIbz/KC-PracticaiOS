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
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        // Muestra el título de grupo según tag
        
        return model.book(forTagName: getTags, at: section)
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Definir un id para el tipo de celda
        let cellId = "BookCell"
        
        // Averiguar qué libro es
        let book = model.book(forTagName: getTags, at: indexPath.section)
        
        // Crear la celda
        var cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        
        if cell == nil {
            
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellId)
        }
        
        // Configurarla
        cell?.imageView?.image = loadImage(path: "book-image.jpg")
        cell?.textLabel?.text = book?.title
        cell?.detailTextLabel?.text = book?.title
        
        // Devolverla
        return cell!
    }
    
    
    //MARK: - Utils
    func loadImage(path: String) -> UIImage? {
        
        let image = UIImage(contentsOfFile: path)
        
        if image == nil {
            
            print("No image found")
        }
        
        return image
    }
    
}











