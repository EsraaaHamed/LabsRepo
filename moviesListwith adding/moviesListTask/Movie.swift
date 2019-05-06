//
//  Movie.swift
//  moviesListTask
//
//  Created by Esraa Hassan on 5/6/19.
//  Copyright © 2019 iti. All rights reserved.
//

import Foundation
class Movie
{
    var title : String ;
    var image : String;
    var rating : Float ;
    var releaseYear : Int;
    var genre : [String];
    init()
    {
        title = "";
        image = "";
        rating = 0.0;
        releaseYear = 0;
        genre = [""];
    }
    init(title : String , image : String , rating : Float , releaseYear : Int , genre : [String]) {
        self.title = title;
        self.image = image;
        self.rating = rating;
        self.releaseYear = releaseYear;
        self.genre = genre;
        
    }
}
