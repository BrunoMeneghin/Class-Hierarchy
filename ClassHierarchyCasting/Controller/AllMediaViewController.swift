//
//  AllMediaViewController.swift
//  ClassHierarchyCasting
//
//  Created by Bruno Meneghin on 22/05/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

import UIKit

class AllMediaViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let showMedia = ShowMedia.Media()
    
    @IBOutlet weak var tableViewMedia: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableViewMedia.delegate = self
        tableViewMedia.reloadData()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return showMedia.movies.count != 0 ? showMedia.movies.count : 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AllMediaCellTableViewCell
        
        cell.textLabel?.text = showMedia.movies[indexPath.row]
        cell.detailTextLabel?.text = showMedia.songs[indexPath.row]
        
        return cell
        
    }
    
}
