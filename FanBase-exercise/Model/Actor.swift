//
//  Actor.swift
//  FanBase-exercise
//
//  Created by Marjo Salo on 20/10/2020.
//

import Foundation

struct Actor {
    private(set) public var name: String
    private(set) public var imageName: String
    private(set) public var information: String
    
    init(name: String, imageName: String, information: String) {
        self.name = name
        self.imageName = imageName
        self.information = information
    }
}
