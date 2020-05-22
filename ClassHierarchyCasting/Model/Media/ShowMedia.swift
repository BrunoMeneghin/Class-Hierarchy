//
//  ShowMedia.swift
//  ClassHierarchyCasting
//
//  Created by Bruno Meneghin on 22/05/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

class ShowMedia {
    
    struct Media {
        
        var movies = [String]()
        var songs = [String]()
        
        let library = [
            Movie(name: "Casablanca", director: "Michael Curtiz"),
            Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
            Movie(name: "Citizen Kane", director: "Orson Welles"),
            Song(name: "The One And Only", artist: "Chesney Hawkes"),
        ]
        
        init() {
            for item in library {
                if let movie = item as? Movie {
                    movies.append("Movie: \(movie.name), dir. \(movie.director)")
                } else if let song = item as? Song {
                    songs.append("Song: \(song.name), by \(song.artist)")
                }
            }
            
            // the type of "library" is inferred to be [MediaItem]
        }
    }
    
}
