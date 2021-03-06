//
//  MovieCell.swift
//  MSAppsTest
//
//  Created by Alon Harari on 13/03/2019.
//  Copyright © 2019 Alon Harari. All rights reserved.
//

import Foundation
import UIKit


class MovieCell: UITableViewCell {
    

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var photoImageview: UIImageView!
    
    
    
    
    func setMovieCellWith(movie: Movie) {
        DispatchQueue.main.async {
            self.titleLabel.text = movie.title
            self.yearLabel.text = String(movie.releaseYear)
            if let url = movie.image {
                self.photoImageview.loadImageUsingCacheWithURLString(url, placeHolder: UIImage(named: "placeholder"))
           }
        }
    }
    
}


















