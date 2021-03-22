//
//  ActorCell.swift
//  FanBase-exercise
//
//  Created by Marjo Salo on 20/10/2020.
//

import UIKit

class ActorCell: UICollectionViewCell {
    
    @IBOutlet weak var actorImage: UIImageView!
    @IBOutlet weak var actorName: UILabel!
    
    func updateViews(actor: Actor) {
        actorImage.image = UIImage(named: actor.imageName)
        actorName.text = actor.name
        
    }
}
