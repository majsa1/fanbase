//
//  ViewController.swift
//  FanBase-exercise
//
//  Created by Marjo Salo on 20/10/2020.
//

import UIKit

class MovieVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var movieTable: UITableView!
    
    private(set) public var actor = [Actor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        movieTable.dataSource = self
        movieTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getMovies().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as? MovieCell {
            let movie = DataService.instance.getMovies()[indexPath.row]
            cell.updateViews(movie: movie)
            return cell
        } else {
            return MovieCell()
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let movieCell = cell as? MovieCell {
           return movieCell.setCollectionViewDataSourceDelegate(dataSourceDelegate: self, forRow: indexPath.row)
        }
    }
}
    
extension MovieVC: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataService.instance.getActors(forMovie: collectionView.tag).count
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorCell", for: indexPath) as? ActorCell {
            let actor = DataService.instance.getActors(forMovie: collectionView.tag)[indexPath.item]
            cell.updateViews(actor: actor)
            return cell
        } else {
            return ActorCell()
        }
    }
        
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let actor = DataService.instance.getActors(forMovie: collectionView.tag)[indexPath.item]
        performSegue(withIdentifier: "ActorVC", sender: actor)
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let actorVC = segue.destination as? ActorVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            actorVC.actor = (sender as! Actor)
        }
    }
}
