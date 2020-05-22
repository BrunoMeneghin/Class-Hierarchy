//
//  Movie.swift
//  ClassHierarchyCasting
//
//  Created by Bruno Meneghin on 22/05/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}
