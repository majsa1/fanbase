//
//  ActorVC.swift
//  FanBase-exercise
//
//  Created by Marjo Salo on 22/10/2020.
//

import UIKit

class ActorVC: UIViewController {
    
    @IBOutlet weak var actorImage: UIImageView!
    @IBOutlet weak var actorName: UILabel!
    @IBOutlet weak var actorInformation: UITextView!
    
    var actor: Actor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actorImage.image = UIImage(named: actor.imageName)
        actorName.text = actor.name
        actorInformation.text = actor.information
    }
}

