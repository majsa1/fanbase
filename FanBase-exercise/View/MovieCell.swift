//
//  MovieCell.swift
//  FanBase-exercise
//
//  Created by Marjo Salo on 20/10/2020.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var actorCollection: UICollectionView!
    
    func updateViews(movie: Movie) {
        movieTitle.text = movie.title
    }
    
    func setCollectionViewDataSourceDelegate(dataSourceDelegate: UICollectionViewDataSource & UICollectionViewDelegate, forRow row: Int) {
        actorCollection.delegate = dataSourceDelegate
        actorCollection.dataSource = dataSourceDelegate
        actorCollection.tag = row
        actorCollection.reloadData()
    } 
}
