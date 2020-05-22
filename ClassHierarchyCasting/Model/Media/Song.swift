//
//  Song.swift
//  ClassHierarchyCasting
//
//  Created by Bruno Meneghin on 22/05/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}
